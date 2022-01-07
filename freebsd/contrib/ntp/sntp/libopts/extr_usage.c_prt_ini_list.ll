; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_prt_ini_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_usage.c_prt_ini_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@AG_PATH_MAX = common dso_local global i32 0, align 4
@zPresetIntro = common dso_local global i8* null, align 8
@option_usage_fp = common dso_local global i32 0, align 4
@zPathFmt = common dso_local global i8* null, align 8
@NUL = common dso_local global i8 0, align 1
@DIRCH = common dso_local global i32 0, align 4
@NL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*, i8*)* @prt_ini_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prt_ini_list(i8** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat, align 4
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @AG_PATH_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i8*, i8** @zPresetIntro, align 8
  %18 = load i32, i32* @option_usage_fp, align 4
  %19 = call i32 @fputs(i8* %17, i32 %18)
  br label %20

20:                                               ; preds = %83, %3
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %4, align 8
  %23 = load i8*, i8** %21, align 8
  store i8* %23, i8** %9, align 8
  store i8* %16, i8** %10, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %87

27:                                               ; preds = %20
  %28 = trunc i64 %14 to i32
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @optionMakePath(i8* %16, i32 %28, i8* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load i8*, i8** %9, align 8
  store i8* %34, i8** %10, align 8
  br label %55

35:                                               ; preds = %27
  %36 = load i8*, i8** %9, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 36
  br i1 %39, label %40, label %54

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 36
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 64
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %40
  %53 = load i8*, i8** %10, align 8
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %52, %46, %35
  br label %55

55:                                               ; preds = %54, %33
  %56 = load i32, i32* @option_usage_fp, align 4
  %57 = load i8*, i8** @zPathFmt, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @fprintf(i32 %56, i8* %57, i8* %58)
  %60 = load i8*, i8** %5, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* @NUL, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %55
  %67 = load i8*, i8** %10, align 8
  %68 = call i64 @stat(i8* %67, %struct.stat* %11)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @S_ISDIR(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load i32, i32* @DIRCH, align 4
  %77 = load i32, i32* @option_usage_fp, align 4
  %78 = call i32 @fputc(i32 %76, i32 %77)
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* @option_usage_fp, align 4
  %81 = call i32 @fputs(i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %75, %70, %66
  br label %83

83:                                               ; preds = %82, %55
  %84 = load i32, i32* @NL, align 4
  %85 = load i32, i32* @option_usage_fp, align 4
  %86 = call i32 @fputc(i32 %84, i32 %85)
  br label %20

87:                                               ; preds = %26
  %88 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %88)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fputs(i8*, i32) #2

declare dso_local i32 @optionMakePath(i8*, i32, i8*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @fputc(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
