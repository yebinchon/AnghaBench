; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_base64.c_isc_base64_totext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_base64.c_isc_base64_totext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@base64 = common dso_local global i8* null, align 8
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_base64_totext(%struct.TYPE_4__* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [5 x i8], align 1
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 4, i32* %6, align 4
  br label %14

14:                                               ; preds = %13, %4
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %16 = call i32 @memset(i8* %15, i32 0, i32 5)
  br label %17

17:                                               ; preds = %109, %14
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %110

22:                                               ; preds = %17
  %23 = load i8*, i8** @base64, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 2
  %30 = and i32 %29, 63
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %23, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 %33, i8* %34, align 1
  %35 = load i8*, i8** @base64, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 4
  %42 = and i32 %41, 48
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 4
  %49 = and i32 %48, 15
  %50 = or i32 %42, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %35, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 1
  store i8 %53, i8* %54, align 1
  %55 = load i8*, i8** @base64, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 2
  %62 = and i32 %61, 60
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = ashr i32 %67, 6
  %69 = and i32 %68, 3
  %70 = or i32 %62, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %55, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 2
  store i8 %73, i8* %74, align 1
  %75 = load i8*, i8** @base64, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 63
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %75, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 3
  store i8 %84, i8* %85, align 1
  %86 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @str_totext(i8* %86, i32* %87)
  %89 = call i32 @RETERR(i32 %88)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = call i32 @isc_region_consume(%struct.TYPE_4__* %90, i32 3)
  %92 = load i32, i32* %10, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %22
  %99 = load i32, i32* %10, align 4
  %100 = add i32 %99, 1
  %101 = mul i32 %100, 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  store i32 0, i32* %10, align 4
  %105 = load i8*, i8** %7, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = call i32 @str_totext(i8* %105, i32* %106)
  %108 = call i32 @RETERR(i32 %107)
  br label %109

109:                                              ; preds = %104, %98, %22
  br label %17

110:                                              ; preds = %17
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %167

115:                                              ; preds = %110
  %116 = load i8*, i8** @base64, align 8
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 2
  %123 = and i32 %122, 63
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %116, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 %126, i8* %127, align 1
  %128 = load i8*, i8** @base64, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 4
  %135 = and i32 %134, 48
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 4
  %142 = and i32 %141, 15
  %143 = or i32 %135, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %128, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 1
  store i8 %146, i8* %147, align 1
  %148 = load i8*, i8** @base64, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = shl i32 %153, 2
  %155 = and i32 %154, 60
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %148, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 2
  store i8 %158, i8* %159, align 1
  %160 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 3
  store i8 61, i8* %160, align 1
  %161 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %162 = load i32*, i32** %8, align 8
  %163 = call i32 @str_totext(i8* %161, i32* %162)
  %164 = call i32 @RETERR(i32 %163)
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %166 = call i32 @isc_region_consume(%struct.TYPE_4__* %165, i32 2)
  br label %206

167:                                              ; preds = %110
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %205

172:                                              ; preds = %167
  %173 = load i8*, i8** @base64, align 8
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = ashr i32 %178, 2
  %180 = and i32 %179, 63
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %173, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8 %183, i8* %184, align 1
  %185 = load i8*, i8** @base64, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = shl i32 %190, 4
  %192 = and i32 %191, 48
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %185, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 1
  store i8 %195, i8* %196, align 1
  %197 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 3
  store i8 61, i8* %197, align 1
  %198 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 2
  store i8 61, i8* %198, align 1
  %199 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %200 = load i32*, i32** %8, align 8
  %201 = call i32 @str_totext(i8* %199, i32* %200)
  %202 = call i32 @RETERR(i32 %201)
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %204 = call i32 @isc_region_consume(%struct.TYPE_4__* %203, i32 1)
  br label %205

205:                                              ; preds = %172, %167
  br label %206

206:                                              ; preds = %205, %115
  %207 = load i32, i32* @ISC_R_SUCCESS, align 4
  ret i32 %207
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @RETERR(i32) #1

declare dso_local i32 @str_totext(i8*, i32*) #1

declare dso_local i32 @isc_region_consume(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
