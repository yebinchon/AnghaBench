; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_readrcsection.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_readrcsection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@smb_rc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"charsets\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"charset specification in the section '%s' ignored\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"retry_count\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"invalid address specified in the section %s\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"workgroup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_ctx*, i8*, i32)* @smb_ctx_readrcsection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_ctx_readrcsection(%struct.smb_ctx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.smb_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.smb_ctx* %0, %struct.smb_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i32, i32* @smb_rc, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @rc_getstringptr(i32 %13, i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %8)
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load %struct.smb_ctx*, %struct.smb_ctx** %5, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @smb_ctx_setcharset(%struct.smb_ctx* %19, i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @smb_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %25, i8* %26)
  br label %28

28:                                               ; preds = %24, %18
  br label %29

29:                                               ; preds = %28, %12
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %31, 1
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32, i32* @smb_rc, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.smb_ctx*, %struct.smb_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @rc_getint(i32 %34, i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %38)
  %40 = load i32, i32* @smb_rc, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.smb_ctx*, %struct.smb_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @rc_getint(i32 %40, i8* %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* %44)
  br label %46

46:                                               ; preds = %33, %30
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load i32, i32* @smb_rc, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @rc_getstringptr(i32 %50, i8* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %8)
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.smb_ctx*, %struct.smb_ctx** %5, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @smb_ctx_setsrvaddr(%struct.smb_ctx* %56, i8* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @smb_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 0, i8* %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %92

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %49
  br label %67

67:                                               ; preds = %66, %46
  %68 = load i32, i32* %7, align 4
  %69 = icmp sge i32 %68, 2
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i32, i32* @smb_rc, align 4
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @rc_getstringptr(i32 %71, i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %8)
  %74 = load i8*, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.smb_ctx*, %struct.smb_ctx** %5, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @smb_ctx_setpassword(%struct.smb_ctx* %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %70
  br label %81

81:                                               ; preds = %80, %67
  %82 = load i32, i32* @smb_rc, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = call i32 @rc_getstringptr(i32 %82, i8* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %8)
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load %struct.smb_ctx*, %struct.smb_ctx** %5, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @smb_ctx_setworkgroup(%struct.smb_ctx* %88, i8* %89)
  br label %91

91:                                               ; preds = %87, %81
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %61
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @rc_getstringptr(i32, i8*, i8*, i8**) #1

declare dso_local i32 @smb_ctx_setcharset(%struct.smb_ctx*, i8*) #1

declare dso_local i32 @smb_error(i8*, i32, i8*) #1

declare dso_local i32 @rc_getint(i32, i8*, i8*, i32*) #1

declare dso_local i32 @smb_ctx_setsrvaddr(%struct.smb_ctx*, i8*) #1

declare dso_local i32 @smb_ctx_setpassword(%struct.smb_ctx*, i8*) #1

declare dso_local i32 @smb_ctx_setworkgroup(%struct.smb_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
