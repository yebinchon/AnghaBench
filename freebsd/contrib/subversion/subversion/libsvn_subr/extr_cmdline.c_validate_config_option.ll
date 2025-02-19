; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_validate_config_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_validate_config_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@svn__valid_config_files = common dso_local global i32* null, align 8
@svn__valid_config_sections = common dso_local global i32* null, align 8
@svn__empty_config_sections = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@svn__valid_config_options = common dso_local global i32* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*)* @validate_config_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @validate_config_option(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32*, i32** @svn__valid_config_files, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @string_in_array(i32 %10, i32* %11, i32 2, i32* %12)
  %14 = call i32 @SVN_ERR(i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** @svn__valid_config_sections, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @string_in_array(i32 %17, i32* %18, i32 2, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %40, %2
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 2
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @svn__empty_config_sections, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @strcmp(i32 %29, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  %38 = load i32, i32* @TRUE, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %26
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %22

43:                                               ; preds = %22
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @svn__valid_config_options, align 8
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @string_in_array(i32 %49, i32* %50, i32 2, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  br label %54

54:                                               ; preds = %46, %43
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %55
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @string_in_array(i32, i32*, i32, i32*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
