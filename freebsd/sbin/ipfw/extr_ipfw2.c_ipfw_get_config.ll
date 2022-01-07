; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_get_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_ipfw_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdline_opts = type { i64 }
%struct.format_opts = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Testing only, list disabled\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IP_FW_XGET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdline_opts*, %struct.format_opts*, %struct.TYPE_5__**, i64*)* @ipfw_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipfw_get_config(%struct.cmdline_opts* %0, %struct.format_opts* %1, %struct.TYPE_5__** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmdline_opts*, align 8
  %7 = alloca %struct.format_opts*, align 8
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.cmdline_opts* %0, %struct.cmdline_opts** %6, align 8
  store %struct.format_opts* %1, %struct.format_opts** %7, align 8
  store %struct.TYPE_5__** %2, %struct.TYPE_5__*** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.cmdline_opts*, %struct.cmdline_opts** %6, align 8
  %14 = getelementptr inbounds %struct.cmdline_opts, %struct.cmdline_opts* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %90

20:                                               ; preds = %4
  store i64 4096, i64* %11, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %83, %20
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %86

24:                                               ; preds = %21
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %29 = call i32 @free(%struct.TYPE_5__* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* %11, align 8
  %32 = call %struct.TYPE_5__* @calloc(i32 1, i64 %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %10, align 8
  %33 = icmp eq %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %5, align 4
  br label %90

36:                                               ; preds = %30
  %37 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %38 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %43 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.format_opts*, %struct.format_opts** %7, align 8
  %48 = getelementptr inbounds %struct.format_opts, %struct.format_opts* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @IP_FW_XGET, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = call i64 @do_get3(i32 %52, i32* %54, i64* %11)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %36
  %58 = load i32, i32* @errno, align 4
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %63 = call i32 @free(%struct.TYPE_5__* %62)
  %64 = load i32, i32* @errno, align 4
  store i32 %64, i32* %5, align 4
  br label %90

65:                                               ; preds = %57
  %66 = load i64, i64* %11, align 8
  %67 = mul i64 %66, 2
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %73, %65
  br label %83

78:                                               ; preds = %36
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %80 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* %79, %struct.TYPE_5__** %80, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load i64*, i64** %9, align 8
  store i64 %81, i64* %82, align 8
  store i32 0, i32* %5, align 4
  br label %90

83:                                               ; preds = %77
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %21

86:                                               ; preds = %21
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %88 = call i32 @free(%struct.TYPE_5__* %87)
  %89 = load i32, i32* @ENOMEM, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %78, %61, %34, %17
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @calloc(i32, i64) #1

declare dso_local i64 @do_get3(i32, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
