; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_set_pinstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vatpic.c_vatpic_set_pinstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vatpic = type { i32*, %struct.atpic* }
%struct.atpic = type { i32*, i32 }

@.str = private unnamed_addr constant [43 x i8] c"vatpic_set_pinstate: invalid pin number %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"vatpic_set_pinstate: vatpic is not locked\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"atpic pin%d: bad acnt %d\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"atpic pin%d: asserted\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"atpic pin%d: deasserted\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"atpic pin%d: %s, ignored, acnt %d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"asserted\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"deasserted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vatpic*, i32, i32)* @vatpic_set_pinstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vatpic_set_pinstate(%struct.vatpic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vatpic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.atpic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vatpic* %0, %struct.vatpic** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 16
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i1 [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %18, i8* %21)
  %23 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %24 = call i32 @VATPIC_LOCKED(%struct.vatpic* %23)
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %27 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %26, i32 0, i32 1
  %28 = load %struct.atpic*, %struct.atpic** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 3
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.atpic, %struct.atpic* %28, i64 %31
  store %struct.atpic* %32, %struct.atpic** %7, align 8
  %33 = load %struct.atpic*, %struct.atpic** %7, align 8
  %34 = getelementptr inbounds %struct.atpic, %struct.atpic* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 7
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %16
  %44 = load %struct.atpic*, %struct.atpic** %7, align 8
  %45 = getelementptr inbounds %struct.atpic, %struct.atpic* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 7
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %63

53:                                               ; preds = %16
  %54 = load %struct.atpic*, %struct.atpic** %7, align 8
  %55 = getelementptr inbounds %struct.atpic, %struct.atpic* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %53, %43
  %64 = load %struct.atpic*, %struct.atpic** %7, align 8
  %65 = getelementptr inbounds %struct.atpic, %struct.atpic* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, 7
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %63
  %75 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @VATPIC_CTR2(%struct.vatpic* %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %63
  %80 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %81 = getelementptr inbounds %struct.vatpic, %struct.vatpic* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = ashr i32 %83, 3
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = and i32 %88, 7
  %90 = shl i32 1, %89
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %79
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %105, label %99

99:                                               ; preds = %96, %79
  %100 = load i32, i32* %9, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %116

105:                                              ; preds = %102, %96
  %106 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @VATPIC_CTR1(%struct.vatpic* %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %5, align 4
  %110 = and i32 %109, 7
  %111 = shl i32 1, %110
  %112 = load %struct.atpic*, %struct.atpic** %7, align 8
  %113 = getelementptr inbounds %struct.atpic, %struct.atpic* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %148

116:                                              ; preds = %102, %99
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %138

119:                                              ; preds = %116
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %119
  %123 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @VATPIC_CTR1(%struct.vatpic* %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %122
  %129 = load i32, i32* %5, align 4
  %130 = and i32 %129, 7
  %131 = shl i32 1, %130
  %132 = xor i32 %131, -1
  %133 = load %struct.atpic*, %struct.atpic** %7, align 8
  %134 = getelementptr inbounds %struct.atpic, %struct.atpic* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %128, %122
  br label %147

138:                                              ; preds = %119, %116
  %139 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0)
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @VATPIC_CTR3(%struct.vatpic* %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %140, i8* %144, i32 %145)
  br label %147

147:                                              ; preds = %138, %137
  br label %148

148:                                              ; preds = %147, %105
  %149 = load %struct.vatpic*, %struct.vatpic** %4, align 8
  %150 = call i32 @vatpic_notify_intr(%struct.vatpic* %149)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VATPIC_LOCKED(%struct.vatpic*) #1

declare dso_local i32 @VATPIC_CTR2(%struct.vatpic*, i8*, i32, i32) #1

declare dso_local i32 @VATPIC_CTR1(%struct.vatpic*, i8*, i32) #1

declare dso_local i32 @VATPIC_CTR3(%struct.vatpic*, i8*, i32, i8*, i32) #1

declare dso_local i32 @vatpic_notify_intr(%struct.vatpic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
