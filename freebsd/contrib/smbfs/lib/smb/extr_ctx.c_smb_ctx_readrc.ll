; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_readrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_readrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i64*, i64* }

@SMB_MAXSRVNAMELEN = common dso_local global i64 0, align 8
@SMB_MAXUSERNAMELEN = common dso_local global i64 0, align 8
@SMB_MAXSHARENAMELEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@smb_rc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s:%s:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_ctx_readrc(%struct.smb_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smb_ctx*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.smb_ctx* %0, %struct.smb_ctx** %3, align 8
  %7 = load i64, i64* @SMB_MAXSRVNAMELEN, align 8
  %8 = load i64, i64* @SMB_MAXUSERNAMELEN, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i64, i64* @SMB_MAXSHARENAMELEN, align 8
  %11 = add nsw i64 %9, %10
  %12 = add nsw i64 %11, 4
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = call i64 (...) @smb_open_rcfile()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %99

18:                                               ; preds = %1
  %19 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26, %18
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %99

35:                                               ; preds = %26
  %36 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %37 = call i32 @smb_ctx_readrcsection(%struct.smb_ctx* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %38 = load i32, i32* @smb_rc, align 4
  %39 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @nb_ctx_readrcsection(i32 %38, i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %43 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %44 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %45 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = bitcast i64* %47 to i8*
  %49 = call i32 @smb_ctx_readrcsection(%struct.smb_ctx* %43, i8* %48, i32 1)
  %50 = load i32, i32* @smb_rc, align 4
  %51 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = bitcast i64* %57 to i8*
  %59 = call i32 @nb_ctx_readrcsection(i32 %50, i32 %53, i8* %58, i32 1)
  %60 = trunc i64 %12 to i32
  %61 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = bitcast i64* %64 to i8*
  %66 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %67 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %14, i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %65, i64* %69)
  %71 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %72 = call i32 @smb_ctx_readrcsection(%struct.smb_ctx* %71, i8* %14, i32 2)
  %73 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %74 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %35
  %81 = trunc i64 %12 to i32
  %82 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %83 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = bitcast i64* %85 to i8*
  %87 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %88 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64*, i64** %89, align 8
  %91 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %92 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %14, i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %86, i64* %90, i64* %94)
  %96 = load %struct.smb_ctx*, %struct.smb_ctx** %3, align 8
  %97 = call i32 @smb_ctx_readrcsection(%struct.smb_ctx* %96, i8* %14, i32 3)
  br label %98

98:                                               ; preds = %80, %35
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %34, %17
  %100 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @smb_open_rcfile(...) #2

declare dso_local i32 @smb_ctx_readrcsection(%struct.smb_ctx*, i8*, i32) #2

declare dso_local i32 @nb_ctx_readrcsection(i32, i32, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
