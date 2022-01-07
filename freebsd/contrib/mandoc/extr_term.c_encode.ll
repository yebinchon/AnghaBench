; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32, i32, %struct.TYPE_2__*, i32 (%struct.termp*, i8)* }
%struct.TYPE_2__ = type { i32, i32, i8* }

@TERMP_NOBUF = common dso_local global i32 0, align 4
@ASCII_HYPH = common dso_local global i8 0, align 1
@ASCII_NBRSP = common dso_local global i8 0, align 1
@TERMP_BACKBEFORE = common dso_local global i32 0, align 4
@TERMP_BACKAFTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, i8*, i64)* @encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode(%struct.termp* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.termp*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.termp* %0, %struct.termp** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.termp*, %struct.termp** %4, align 8
  %9 = getelementptr inbounds %struct.termp, %struct.termp* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @TERMP_NOBUF, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = load %struct.termp*, %struct.termp** %4, align 8
  %21 = getelementptr inbounds %struct.termp, %struct.termp* %20, i32 0, i32 3
  %22 = load i32 (%struct.termp*, i8)*, i32 (%struct.termp*, i8)** %21, align 8
  %23 = load %struct.termp*, %struct.termp** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = call i32 %22(%struct.termp* %23, i8 signext %27)
  br label %29

29:                                               ; preds = %19
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %7, align 8
  br label %15

32:                                               ; preds = %15
  br label %185

33:                                               ; preds = %3
  %34 = load %struct.termp*, %struct.termp** %4, align 8
  %35 = getelementptr inbounds %struct.termp, %struct.termp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %6, align 8
  %40 = mul i64 %39, 5
  %41 = add i64 %38, %40
  %42 = load %struct.termp*, %struct.termp** %4, align 8
  %43 = getelementptr inbounds %struct.termp, %struct.termp* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 %41, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %33
  %50 = load %struct.termp*, %struct.termp** %4, align 8
  %51 = getelementptr inbounds %struct.termp, %struct.termp* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load %struct.termp*, %struct.termp** %4, align 8
  %54 = getelementptr inbounds %struct.termp, %struct.termp* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %6, align 8
  %59 = mul i64 %58, 5
  %60 = add i64 %57, %59
  %61 = trunc i64 %60 to i32
  %62 = call i32 @adjbuf(%struct.TYPE_2__* %52, i32 %61)
  br label %63

63:                                               ; preds = %49, %33
  store i64 0, i64* %7, align 8
  br label %64

64:                                               ; preds = %164, %63
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %6, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %167

68:                                               ; preds = %64
  %69 = load i8, i8* @ASCII_HYPH, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8*, i8** %5, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %70, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %68
  %78 = load i8*, i8** %5, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @isgraph(i8 zeroext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77, %68
  %85 = load %struct.termp*, %struct.termp** %4, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = call i32 @encode1(%struct.termp* %85, i8 signext %89)
  br label %163

91:                                               ; preds = %77
  %92 = load %struct.termp*, %struct.termp** %4, align 8
  %93 = getelementptr inbounds %struct.termp, %struct.termp* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.termp*, %struct.termp** %4, align 8
  %98 = getelementptr inbounds %struct.termp, %struct.termp* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sle i32 %96, %99
  br i1 %100, label %117, label %101

101:                                              ; preds = %91
  %102 = load i8*, i8** %5, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 32
  br i1 %107, label %108, label %132

108:                                              ; preds = %101
  %109 = load i8*, i8** %5, align 8
  %110 = load i64, i64* %7, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = load i8, i8* @ASCII_NBRSP, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %113, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %108, %91
  %118 = load i8*, i8** %5, align 8
  %119 = load i64, i64* %7, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = load %struct.termp*, %struct.termp** %4, align 8
  %123 = getelementptr inbounds %struct.termp, %struct.termp* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.termp*, %struct.termp** %4, align 8
  %128 = getelementptr inbounds %struct.termp, %struct.termp* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %126, i64 %130
  store i8 %121, i8* %131, align 1
  br label %132

132:                                              ; preds = %117, %108, %101
  %133 = load %struct.termp*, %struct.termp** %4, align 8
  %134 = getelementptr inbounds %struct.termp, %struct.termp* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load i8*, i8** %5, align 8
  %138 = load i64, i64* %7, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 8
  br i1 %142, label %143, label %162

143:                                              ; preds = %132
  %144 = load %struct.termp*, %struct.termp** %4, align 8
  %145 = getelementptr inbounds %struct.termp, %struct.termp* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @TERMP_BACKBEFORE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %143
  %151 = load i32, i32* @TERMP_BACKBEFORE, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.termp*, %struct.termp** %4, align 8
  %154 = getelementptr inbounds %struct.termp, %struct.termp* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load i32, i32* @TERMP_BACKAFTER, align 4
  %158 = load %struct.termp*, %struct.termp** %4, align 8
  %159 = getelementptr inbounds %struct.termp, %struct.termp* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %150, %143, %132
  br label %163

163:                                              ; preds = %162, %84
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %7, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %7, align 8
  br label %64

167:                                              ; preds = %64
  %168 = load %struct.termp*, %struct.termp** %4, align 8
  %169 = getelementptr inbounds %struct.termp, %struct.termp* %168, i32 0, i32 2
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.termp*, %struct.termp** %4, align 8
  %174 = getelementptr inbounds %struct.termp, %struct.termp* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %172, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %167
  %178 = load %struct.termp*, %struct.termp** %4, align 8
  %179 = getelementptr inbounds %struct.termp, %struct.termp* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.termp*, %struct.termp** %4, align 8
  %182 = getelementptr inbounds %struct.termp, %struct.termp* %181, i32 0, i32 2
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  store i32 %180, i32* %184, align 4
  br label %185

185:                                              ; preds = %32, %177, %167
  ret void
}

declare dso_local i32 @adjbuf(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @isgraph(i8 zeroext) #1

declare dso_local i32 @encode1(%struct.termp*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
