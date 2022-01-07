; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isoclns_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-isoclns.c_isoclns_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"|OSI\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"OSI NLPID %s (0x%02x): \00", align 1
@nlpid_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0A\09\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"%slength: %u\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"OSI NLPID 0x%02x unknown\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isoclns_print(%struct.TYPE_12__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ND_TTEST(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = call i32 @ND_PRINT(%struct.TYPE_12__* bitcast ([5 x i8]* @.str to %struct.TYPE_12__*))
  br label %134

14:                                               ; preds = %3
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = load i32, i32* @nlpid_values, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @tok2str(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_12__*
  %29 = call i32 @ND_PRINT(%struct.TYPE_12__* %28)
  br label %30

30:                                               ; preds = %19, %14
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %102 [
    i32 135, label %33
    i32 134, label %45
    i32 131, label %50
    i32 130, label %62
    i32 128, label %74
    i32 133, label %81
    i32 132, label %88
    i32 129, label %95
  ]

33:                                               ; preds = %30
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @clnp_print(%struct.TYPE_12__* %34, i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @print_unknown_data(%struct.TYPE_12__* %40, i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %39, %33
  br label %134

45:                                               ; preds = %30
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @esis_print(%struct.TYPE_12__* %46, i32* %47, i32 %48)
  br label %134

50:                                               ; preds = %30
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @isis_print(%struct.TYPE_12__* %51, i32* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @print_unknown_data(%struct.TYPE_12__* %57, i32* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %50
  br label %134

62:                                               ; preds = %30
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to %struct.TYPE_12__*
  %73 = call i32 @ND_PRINT(%struct.TYPE_12__* %72)
  br label %134

74:                                               ; preds = %30
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @q933_print(%struct.TYPE_12__* %75, i32* %77, i32 %79)
  br label %134

81:                                               ; preds = %30
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @ip_print(%struct.TYPE_12__* %82, i32* %84, i32 %86)
  br label %134

88:                                               ; preds = %30
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @ip6_print(%struct.TYPE_12__* %89, i32* %91, i32 %93)
  br label %134

95:                                               ; preds = %30
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @ppp_print(%struct.TYPE_12__* %96, i32* %98, i32 %100)
  br label %134

102:                                              ; preds = %30
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %102
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to %struct.TYPE_12__*
  %113 = call i32 @ND_PRINT(%struct.TYPE_12__* %112)
  br label %114

114:                                              ; preds = %107, %102
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to %struct.TYPE_12__*
  %125 = call i32 @ND_PRINT(%struct.TYPE_12__* %124)
  %126 = load i32, i32* %6, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %133

128:                                              ; preds = %114
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @print_unknown_data(%struct.TYPE_12__* %129, i32* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %128, %114
  br label %134

134:                                              ; preds = %11, %45, %133, %95, %88, %81, %74, %62, %61, %44
  ret void
}

declare dso_local i32 @ND_TTEST(i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_12__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @clnp_print(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_12__*, i32*, i8*, i32) #1

declare dso_local i32 @esis_print(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @isis_print(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @q933_print(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @ip_print(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @ip6_print(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @ppp_print(%struct.TYPE_12__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
