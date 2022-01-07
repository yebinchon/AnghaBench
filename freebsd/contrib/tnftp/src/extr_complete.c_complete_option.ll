; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_complete.c_complete_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_complete.c_complete_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8* }

@optiontab = common dso_local global %struct.option* null, align 8
@CC_REFRESH = common dso_local global i8 0, align 1
@el = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@CC_ERROR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i32)* @complete_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @complete_option(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.option*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32* (...) @ftp_sl_init()
  store i32* %9, i32** %6, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %7, align 8
  %12 = load %struct.option*, %struct.option** @optiontab, align 8
  store %struct.option* %12, %struct.option** %5, align 8
  br label %13

13:                                               ; preds = %42, %2
  %14 = load %struct.option*, %struct.option** %5, align 8
  %15 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %13
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.option*, %struct.option** %5, align 8
  %21 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = icmp ugt i64 %19, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %42

26:                                               ; preds = %18
  %27 = load i8*, i8** %3, align 8
  %28 = load %struct.option*, %struct.option** %5, align 8
  %29 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @strncmp(i8* %27, i8* %30, i64 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.option*, %struct.option** %5, align 8
  %37 = getelementptr inbounds %struct.option, %struct.option* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @ftp_strdup(i8* %38)
  %40 = call i32 @ftp_sl_add(i32* %35, i32 %39)
  br label %41

41:                                               ; preds = %34, %26
  br label %42

42:                                               ; preds = %41, %25
  %43 = load %struct.option*, %struct.option** %5, align 8
  %44 = getelementptr inbounds %struct.option, %struct.option* %43, i32 1
  store %struct.option* %44, %struct.option** %5, align 8
  br label %13

45:                                               ; preds = %13
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call zeroext i8 @complete_ambiguous(i8* %46, i32 %47, i32* %48)
  store i8 %49, i8* %8, align 1
  %50 = load i8, i8* %8, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @CC_REFRESH, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load i32, i32* @el, align 4
  %57 = call i32 @el_insertstr(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i8, i8* @CC_ERROR, align 1
  store i8 %60, i8* %8, align 1
  br label %61

61:                                               ; preds = %59, %55
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @sl_free(i32* %63, i32 1)
  %65 = load i8, i8* %8, align 1
  ret i8 %65
}

declare dso_local i32* @ftp_sl_init(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @ftp_sl_add(i32*, i32) #1

declare dso_local i32 @ftp_strdup(i8*) #1

declare dso_local zeroext i8 @complete_ambiguous(i8*, i32, i32*) #1

declare dso_local i32 @el_insertstr(i32, i8*) #1

declare dso_local i32 @sl_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
