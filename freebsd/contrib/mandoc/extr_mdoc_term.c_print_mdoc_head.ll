; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_term.c_print_mdoc_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_term.c_print_mdoc_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.roff_meta = type { i32*, i32, i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@TERMP_NOBREAK = common dso_local global i32 0, align 4
@TERMP_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, %struct.roff_meta*)* @print_mdoc_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_mdoc_head(%struct.termp* %0, %struct.roff_meta* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca %struct.roff_meta*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.termp* %0, %struct.termp** %3, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %4, align 8
  %9 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %10 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %14 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* null, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %19 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @mandoc_strdup(i32 %20)
  store i8* %21, i8** %5, align 8
  br label %30

22:                                               ; preds = %2
  %23 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %24 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %27 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @mandoc_asprintf(i8** %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %25, i32* %28)
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.termp*, %struct.termp** %3, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @term_strlen(%struct.termp* %31, i8* %32)
  store i64 %33, i64* %7, align 8
  %34 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %35 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* null, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %40 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @mandoc_strdup(i32 %41)
  store i8* %42, i8** %6, align 8
  br label %51

43:                                               ; preds = %30
  %44 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %45 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %48 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @mandoc_asprintf(i8** %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32* %49)
  br label %51

51:                                               ; preds = %43, %38
  %52 = load %struct.termp*, %struct.termp** %3, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @term_strlen(%struct.termp* %52, i8* %53)
  store i64 %54, i64* %8, align 8
  %55 = load i32, i32* @TERMP_NOBREAK, align 4
  %56 = load i32, i32* @TERMP_NOSPACE, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.termp*, %struct.termp** %3, align 8
  %59 = getelementptr inbounds %struct.termp, %struct.termp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.termp*, %struct.termp** %3, align 8
  %63 = getelementptr inbounds %struct.termp, %struct.termp* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  %64 = load %struct.termp*, %struct.termp** %3, align 8
  %65 = getelementptr inbounds %struct.termp, %struct.termp* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  %70 = mul i64 2, %69
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %70, %71
  %73 = load %struct.termp*, %struct.termp** %3, align 8
  %74 = getelementptr inbounds %struct.termp, %struct.termp* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = icmp ult i64 %72, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %51
  %79 = load %struct.termp*, %struct.termp** %3, align 8
  %80 = getelementptr inbounds %struct.termp, %struct.termp* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %7, align 8
  %84 = sub i64 %82, %83
  %85 = load %struct.termp*, %struct.termp** %3, align 8
  %86 = call i64 @term_len(%struct.termp* %85, i32 1)
  %87 = add i64 %84, %86
  %88 = udiv i64 %87, 2
  br label %106

89:                                               ; preds = %51
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.termp*, %struct.termp** %3, align 8
  %92 = getelementptr inbounds %struct.termp, %struct.termp* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = icmp ult i64 %90, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load %struct.termp*, %struct.termp** %3, align 8
  %98 = getelementptr inbounds %struct.termp, %struct.termp* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = load i64, i64* %7, align 8
  %102 = sub i64 %100, %101
  br label %104

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %96
  %105 = phi i64 [ %102, %96 ], [ 0, %103 ]
  br label %106

106:                                              ; preds = %104, %78
  %107 = phi i64 [ %88, %78 ], [ %105, %104 ]
  %108 = load %struct.termp*, %struct.termp** %3, align 8
  %109 = getelementptr inbounds %struct.termp, %struct.termp* %108, i32 0, i32 3
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i64 %107, i64* %111, align 8
  %112 = load %struct.termp*, %struct.termp** %3, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = call i32 @term_word(%struct.termp* %112, i8* %113)
  %115 = load %struct.termp*, %struct.termp** %3, align 8
  %116 = call i32 @term_flushln(%struct.termp* %115)
  %117 = load i32, i32* @TERMP_NOSPACE, align 4
  %118 = load %struct.termp*, %struct.termp** %3, align 8
  %119 = getelementptr inbounds %struct.termp, %struct.termp* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load %struct.termp*, %struct.termp** %3, align 8
  %123 = getelementptr inbounds %struct.termp, %struct.termp* %122, i32 0, i32 3
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.termp*, %struct.termp** %3, align 8
  %128 = getelementptr inbounds %struct.termp, %struct.termp* %127, i32 0, i32 3
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  store i64 %126, i64* %130, align 8
  %131 = load %struct.termp*, %struct.termp** %3, align 8
  %132 = getelementptr inbounds %struct.termp, %struct.termp* %131, i32 0, i32 3
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %7, align 8
  %137 = add i64 %135, %136
  %138 = load i64, i64* %8, align 8
  %139 = add i64 %137, %138
  %140 = load %struct.termp*, %struct.termp** %3, align 8
  %141 = getelementptr inbounds %struct.termp, %struct.termp* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = icmp ult i64 %139, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %106
  %146 = load %struct.termp*, %struct.termp** %3, align 8
  %147 = getelementptr inbounds %struct.termp, %struct.termp* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %8, align 8
  %151 = sub i64 %149, %150
  br label %157

152:                                              ; preds = %106
  %153 = load %struct.termp*, %struct.termp** %3, align 8
  %154 = getelementptr inbounds %struct.termp, %struct.termp* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = sext i32 %155 to i64
  br label %157

157:                                              ; preds = %152, %145
  %158 = phi i64 [ %151, %145 ], [ %156, %152 ]
  %159 = load %struct.termp*, %struct.termp** %3, align 8
  %160 = getelementptr inbounds %struct.termp, %struct.termp* %159, i32 0, i32 3
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  store i64 %158, i64* %162, align 8
  %163 = load %struct.termp*, %struct.termp** %3, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = call i32 @term_word(%struct.termp* %163, i8* %164)
  %166 = load %struct.termp*, %struct.termp** %3, align 8
  %167 = call i32 @term_flushln(%struct.termp* %166)
  %168 = load i32, i32* @TERMP_NOBREAK, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.termp*, %struct.termp** %3, align 8
  %171 = getelementptr inbounds %struct.termp, %struct.termp* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load %struct.termp*, %struct.termp** %3, align 8
  %175 = getelementptr inbounds %struct.termp, %struct.termp* %174, i32 0, i32 1
  store i32 0, i32* %175, align 4
  %176 = load %struct.termp*, %struct.termp** %3, align 8
  %177 = getelementptr inbounds %struct.termp, %struct.termp* %176, i32 0, i32 3
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %8, align 8
  %182 = add i64 %180, %181
  %183 = load %struct.termp*, %struct.termp** %3, align 8
  %184 = getelementptr inbounds %struct.termp, %struct.termp* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = icmp ule i64 %182, %186
  br i1 %187, label %188, label %216

188:                                              ; preds = %157
  %189 = load i32, i32* @TERMP_NOSPACE, align 4
  %190 = load %struct.termp*, %struct.termp** %3, align 8
  %191 = getelementptr inbounds %struct.termp, %struct.termp* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load %struct.termp*, %struct.termp** %3, align 8
  %195 = getelementptr inbounds %struct.termp, %struct.termp* %194, i32 0, i32 3
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.termp*, %struct.termp** %3, align 8
  %200 = getelementptr inbounds %struct.termp, %struct.termp* %199, i32 0, i32 3
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 0
  store i64 %198, i64* %202, align 8
  %203 = load %struct.termp*, %struct.termp** %3, align 8
  %204 = getelementptr inbounds %struct.termp, %struct.termp* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = load %struct.termp*, %struct.termp** %3, align 8
  %208 = getelementptr inbounds %struct.termp, %struct.termp* %207, i32 0, i32 3
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  store i64 %206, i64* %210, align 8
  %211 = load %struct.termp*, %struct.termp** %3, align 8
  %212 = load i8*, i8** %6, align 8
  %213 = call i32 @term_word(%struct.termp* %211, i8* %212)
  %214 = load %struct.termp*, %struct.termp** %3, align 8
  %215 = call i32 @term_flushln(%struct.termp* %214)
  br label %216

216:                                              ; preds = %188, %157
  %217 = load i32, i32* @TERMP_NOSPACE, align 4
  %218 = xor i32 %217, -1
  %219 = load %struct.termp*, %struct.termp** %3, align 8
  %220 = getelementptr inbounds %struct.termp, %struct.termp* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = and i32 %221, %218
  store i32 %222, i32* %220, align 8
  %223 = load %struct.termp*, %struct.termp** %3, align 8
  %224 = getelementptr inbounds %struct.termp, %struct.termp* %223, i32 0, i32 3
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 0
  store i64 0, i64* %226, align 8
  %227 = load %struct.termp*, %struct.termp** %3, align 8
  %228 = getelementptr inbounds %struct.termp, %struct.termp* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = load %struct.termp*, %struct.termp** %3, align 8
  %232 = getelementptr inbounds %struct.termp, %struct.termp* %231, i32 0, i32 3
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 1
  store i64 %230, i64* %234, align 8
  %235 = load i8*, i8** %6, align 8
  %236 = call i32 @free(i8* %235)
  %237 = load i8*, i8** %5, align 8
  %238 = call i32 @free(i8* %237)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @mandoc_strdup(i32) #1

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i32, i32*) #1

declare dso_local i64 @term_strlen(%struct.termp*, i8*) #1

declare dso_local i64 @term_len(%struct.termp*, i32) #1

declare dso_local i32 @term_word(%struct.termp*, i8*) #1

declare dso_local i32 @term_flushln(%struct.termp*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
