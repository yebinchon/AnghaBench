; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atalk.c_llap_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-atalk.c_llap_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LAP = type { i32, i32, i32 }
%struct.atDDP = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.atShortDDP = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c" [|llap %u]\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" [|llap]\00", align 1
@ddpSSize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c" [|sddp %u]\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" [|sddp]\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" > %s.%s:\00", align 1
@ddpSize = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c" [|ddp %u]\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" [|ddp]\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"%d > %d at-lap#%d %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @llap_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.LAP*, align 8
  %9 = alloca %struct.atDDP*, align 8
  %10 = alloca %struct.atShortDDP*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 12
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 @ND_PRINT(i32* %20)
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %4, align 4
  br label %216

23:                                               ; preds = %3
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ND_TTEST2(i32 %25, i32 12)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.1 to i32*))
  store i32 0, i32* %4, align 4
  br label %216

31:                                               ; preds = %23
  %32 = load i32*, i32** %6, align 8
  %33 = bitcast i32* %32 to %struct.LAP*
  store %struct.LAP* %33, %struct.LAP** %8, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 12
  store i32* %35, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = sub i64 %37, 12
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %7, align 4
  store i32 12, i32* %12, align 4
  %40 = load %struct.LAP*, %struct.LAP** %8, align 8
  %41 = getelementptr inbounds %struct.LAP, %struct.LAP* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %199 [
    i32 128, label %43
    i32 130, label %117
  ]

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @ddpSSize, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i32*
  %52 = call i32 @ND_PRINT(i32* %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %4, align 4
  br label %216

54:                                               ; preds = %43
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ddpSSize, align 4
  %58 = call i32 @ND_TTEST2(i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @ND_PRINT(i32* bitcast ([9 x i8]* @.str.3 to i32*))
  store i32 0, i32* %4, align 4
  br label %216

63:                                               ; preds = %54
  %64 = load i32*, i32** %6, align 8
  %65 = bitcast i32* %64 to %struct.atShortDDP*
  store %struct.atShortDDP* %65, %struct.atShortDDP** %10, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.LAP*, %struct.LAP** %8, align 8
  %69 = getelementptr inbounds %struct.LAP, %struct.LAP* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ataddr_string(i32* %67, i32 0, i32 %70)
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.atShortDDP*, %struct.atShortDDP** %10, align 8
  %74 = getelementptr inbounds %struct.atShortDDP, %struct.atShortDDP* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ddpskt_string(i32* %72, i32 %75)
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i32*
  %79 = call i32 @ND_PRINT(i32* %78)
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.LAP*, %struct.LAP** %8, align 8
  %83 = getelementptr inbounds %struct.LAP, %struct.LAP* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ataddr_string(i32* %81, i32 0, i32 %84)
  %86 = load i32*, i32** %5, align 8
  %87 = load %struct.atShortDDP*, %struct.atShortDDP** %10, align 8
  %88 = getelementptr inbounds %struct.atShortDDP, %struct.atShortDDP* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ddpskt_string(i32* %86, i32 %89)
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i32*
  %93 = call i32 @ND_PRINT(i32* %92)
  %94 = load i32, i32* @ddpSSize, align 4
  %95 = load i32*, i32** %6, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %6, align 8
  %98 = load i32, i32* @ddpSSize, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* @ddpSSize, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %12, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.atShortDDP*, %struct.atShortDDP** %10, align 8
  %108 = getelementptr inbounds %struct.atShortDDP, %struct.atShortDDP* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.LAP*, %struct.LAP** %8, align 8
  %111 = getelementptr inbounds %struct.LAP, %struct.LAP* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.atShortDDP*, %struct.atShortDDP** %10, align 8
  %114 = getelementptr inbounds %struct.atShortDDP, %struct.atShortDDP* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ddp_print(i32* %104, i32* %105, i32 %106, i32 %109, i32 0, i32 %112, i32 %115)
  br label %214

117:                                              ; preds = %31
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @ddpSize, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = inttoptr i64 %124 to i32*
  %126 = call i32 @ND_PRINT(i32* %125)
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %4, align 4
  br label %216

128:                                              ; preds = %117
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ddpSize, align 4
  %132 = call i32 @ND_TTEST2(i32 %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %128
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str.7 to i32*))
  store i32 0, i32* %4, align 4
  br label %216

137:                                              ; preds = %128
  %138 = load i32*, i32** %6, align 8
  %139 = bitcast i32* %138 to %struct.atDDP*
  store %struct.atDDP* %139, %struct.atDDP** %9, align 8
  %140 = load %struct.atDDP*, %struct.atDDP** %9, align 8
  %141 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %140, i32 0, i32 6
  %142 = call i32 @EXTRACT_16BITS(i32* %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32*, i32** %5, align 8
  %144 = load i32*, i32** %5, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load %struct.atDDP*, %struct.atDDP** %9, align 8
  %147 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ataddr_string(i32* %144, i32 %145, i32 %148)
  %150 = load i32*, i32** %5, align 8
  %151 = load %struct.atDDP*, %struct.atDDP** %9, align 8
  %152 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @ddpskt_string(i32* %150, i32 %153)
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i32*
  %157 = call i32 @ND_PRINT(i32* %156)
  %158 = load i32*, i32** %5, align 8
  %159 = load i32*, i32** %5, align 8
  %160 = load %struct.atDDP*, %struct.atDDP** %9, align 8
  %161 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %160, i32 0, i32 5
  %162 = call i32 @EXTRACT_16BITS(i32* %161)
  %163 = load %struct.atDDP*, %struct.atDDP** %9, align 8
  %164 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ataddr_string(i32* %159, i32 %162, i32 %165)
  %167 = load i32*, i32** %5, align 8
  %168 = load %struct.atDDP*, %struct.atDDP** %9, align 8
  %169 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ddpskt_string(i32* %167, i32 %170)
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to i32*
  %174 = call i32 @ND_PRINT(i32* %173)
  %175 = load i32, i32* @ddpSize, align 4
  %176 = load i32*, i32** %6, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32* %178, i32** %6, align 8
  %179 = load i32, i32* @ddpSize, align 4
  %180 = load i32, i32* %7, align 4
  %181 = sub nsw i32 %180, %179
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* @ddpSize, align 4
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, %182
  store i32 %184, i32* %12, align 4
  %185 = load i32*, i32** %5, align 8
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.atDDP*, %struct.atDDP** %9, align 8
  %189 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.atDDP*, %struct.atDDP** %9, align 8
  %193 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.atDDP*, %struct.atDDP** %9, align 8
  %196 = getelementptr inbounds %struct.atDDP, %struct.atDDP* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @ddp_print(i32* %185, i32* %186, i32 %187, i32 %190, i32 %191, i32 %194, i32 %197)
  br label %214

199:                                              ; preds = %31
  %200 = load i32*, i32** %5, align 8
  %201 = load %struct.LAP*, %struct.LAP** %8, align 8
  %202 = getelementptr inbounds %struct.LAP, %struct.LAP* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.LAP*, %struct.LAP** %8, align 8
  %205 = getelementptr inbounds %struct.LAP, %struct.LAP* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.LAP*, %struct.LAP** %8, align 8
  %208 = getelementptr inbounds %struct.LAP, %struct.LAP* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = inttoptr i64 %211 to i32*
  %213 = call i32 @ND_PRINT(i32* %212)
  br label %214

214:                                              ; preds = %199, %137, %63
  %215 = load i32, i32* %12, align 4
  store i32 %215, i32* %4, align 4
  br label %216

216:                                              ; preds = %214, %134, %121, %60, %47, %28, %16
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TTEST2(i32, i32) #1

declare dso_local i32 @ataddr_string(i32*, i32, i32) #1

declare dso_local i32 @ddpskt_string(i32*, i32) #1

declare dso_local i32 @ddp_print(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
