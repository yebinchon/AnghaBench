; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_ctx.c_smb_ctx_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i8*, i8*, i32, i32, i8* }
%struct.TYPE_3__ = type { i32, i32, i8* }

@SMBCF_SRIGHTS = common dso_local global i32 0, align 4
@SMBCF_NOPWD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smb_ctx_opt(%struct.smb_ctx* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.smb_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.smb_ctx* %0, %struct.smb_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %100 [
    i32 85, label %11
    i32 73, label %12
    i32 77, label %16
    i32 78, label %39
    i32 79, label %45
    i32 80, label %83
    i32 82, label %84
    i32 84, label %90
    i32 87, label %96
  ]

11:                                               ; preds = %3
  br label %100

12:                                               ; preds = %3
  %13 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @smb_ctx_setsrvaddr(%struct.smb_ctx* %13, i8* %14)
  store i32 %15, i32* %7, align 4
  br label %100

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @strtol(i8* %17, i8** %9, i32 8)
  %19 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  store i8* %18, i8** %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 47
  br i1 %25, label %26, label %38

26:                                               ; preds = %16
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = call i8* @strtol(i8* %28, i8** %9, i32 8)
  %30 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* @SMBCF_SRIGHTS, align 4
  %34 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %26, %16
  br label %100

39:                                               ; preds = %3
  %40 = load i32, i32* @SMBCF_NOPWD, align 4
  %41 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %100

45:                                               ; preds = %3
  %46 = load i8*, i8** %6, align 8
  %47 = call i8* @strdup(i8* %46)
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 47)
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  store i8 0, i8* %53, align 1
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %57 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %60 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @smb_parse_owner(i8* %55, i32* %58, i32* %61)
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %52, %45
  %64 = load i8*, i8** %8, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %77 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = call i32 @smb_parse_owner(i8* %72, i32* %75, i32* %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %71, %68, %63
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @free(i8* %81)
  br label %100

83:                                               ; preds = %3
  br label %100

84:                                               ; preds = %3
  %85 = load i8*, i8** %6, align 8
  %86 = call i8* @atoi(i8* %85)
  %87 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i8* %86, i8** %89, align 8
  br label %100

90:                                               ; preds = %3
  %91 = load i8*, i8** %6, align 8
  %92 = call i8* @atoi(i8* %91)
  %93 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %94 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  br label %100

96:                                               ; preds = %3
  %97 = load %struct.smb_ctx*, %struct.smb_ctx** %4, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @smb_ctx_setworkgroup(%struct.smb_ctx* %97, i8* %98)
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %3, %96, %90, %84, %83, %80, %39, %38, %12, %11
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @smb_ctx_setsrvaddr(%struct.smb_ctx*, i8*) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @smb_parse_owner(i8*, i32*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @smb_ctx_setworkgroup(%struct.smb_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
