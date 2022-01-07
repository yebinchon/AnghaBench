; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_ssl_print_name_dp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_ssl_print_name_dp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { %struct.delegpt_addr*, %struct.delegpt_ns* }
%struct.delegpt_addr = type { i32, i32, %struct.delegpt_addr* }
%struct.delegpt_ns = type { i32*, %struct.delegpt_ns* }

@.str = private unnamed_addr constant [10 x i8] c"%s %s %s \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CLASS??\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32, %struct.delegpt*)* @ssl_print_name_dp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_print_name_dp(i32* %0, i8* %1, i32* %2, i32 %3, %struct.delegpt* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.delegpt*, align 8
  %12 = alloca [257 x i8], align 16
  %13 = alloca %struct.delegpt_ns*, align 8
  %14 = alloca %struct.delegpt_addr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.delegpt* %4, %struct.delegpt** %11, align 8
  store i32 0, i32* %15, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %43

19:                                               ; preds = %5
  %20 = load i32, i32* %10, align 4
  %21 = call i8* @sldns_wire2str_class(i32 %20)
  store i8* %21, i8** %16, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 0
  %24 = call i32 @dname_str(i32* %22, i8* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 0
  %27 = load i8*, i8** %16, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i8*, i8** %16, align 8
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i8* [ %30, %29 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %31 ]
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %16, align 8
  %39 = call i32 @free(i8* %38)
  store i32 0, i32* %6, align 4
  br label %102

40:                                               ; preds = %32
  %41 = load i8*, i8** %16, align 8
  %42 = call i32 @free(i8* %41)
  br label %43

43:                                               ; preds = %40, %5
  %44 = load %struct.delegpt*, %struct.delegpt** %11, align 8
  %45 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %44, i32 0, i32 1
  %46 = load %struct.delegpt_ns*, %struct.delegpt_ns** %45, align 8
  store %struct.delegpt_ns* %46, %struct.delegpt_ns** %13, align 8
  br label %47

47:                                               ; preds = %66, %43
  %48 = load %struct.delegpt_ns*, %struct.delegpt_ns** %13, align 8
  %49 = icmp ne %struct.delegpt_ns* %48, null
  br i1 %49, label %50, label %70

50:                                               ; preds = %47
  %51 = load %struct.delegpt_ns*, %struct.delegpt_ns** %13, align 8
  %52 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 0
  %55 = call i32 @dname_str(i32* %53, i8* %54)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %61 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 0
  %62 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %60, i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %102

65:                                               ; preds = %50
  store i32 1, i32* %15, align 4
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.delegpt_ns*, %struct.delegpt_ns** %13, align 8
  %68 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %67, i32 0, i32 1
  %69 = load %struct.delegpt_ns*, %struct.delegpt_ns** %68, align 8
  store %struct.delegpt_ns* %69, %struct.delegpt_ns** %13, align 8
  br label %47

70:                                               ; preds = %47
  %71 = load %struct.delegpt*, %struct.delegpt** %11, align 8
  %72 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %71, i32 0, i32 0
  %73 = load %struct.delegpt_addr*, %struct.delegpt_addr** %72, align 8
  store %struct.delegpt_addr* %73, %struct.delegpt_addr** %14, align 8
  br label %74

74:                                               ; preds = %95, %70
  %75 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %76 = icmp ne %struct.delegpt_addr* %75, null
  br i1 %76, label %77, label %99

77:                                               ; preds = %74
  %78 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %79 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %78, i32 0, i32 1
  %80 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %81 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 0
  %84 = call i32 @addr_to_str(i32* %79, i32 %82, i8* %83, i32 257)
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %15, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %90 = getelementptr inbounds [257 x i8], [257 x i8]* %12, i64 0, i64 0
  %91 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %89, i8* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %102

94:                                               ; preds = %77
  store i32 1, i32* %15, align 4
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  %97 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %96, i32 0, i32 2
  %98 = load %struct.delegpt_addr*, %struct.delegpt_addr** %97, align 8
  store %struct.delegpt_addr* %98, %struct.delegpt_addr** %14, align 8
  br label %74

99:                                               ; preds = %74
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 (i32*, i8*, ...) @ssl_printf(i32* %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %99, %93, %64, %37
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i8* @sldns_wire2str_class(i32) #1

declare dso_local i32 @dname_str(i32*, i8*) #1

declare dso_local i32 @ssl_printf(i32*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @addr_to_str(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
