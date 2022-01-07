; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_term.c_print_man_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_term.c_print_man_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.roff_meta = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@TERMP_NOBREAK = common dso_local global i32 0, align 4
@TERMP_NOSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, %struct.roff_meta*)* @print_man_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_man_head(%struct.termp* %0, %struct.roff_meta* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca %struct.roff_meta*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.termp* %0, %struct.termp** %3, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %4, align 8
  %9 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %10 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %14 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %18 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp eq i8* null, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %24 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  br label %26

26:                                               ; preds = %22, %21
  %27 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %21 ], [ %25, %22 ]
  store i8* %27, i8** %5, align 8
  %28 = load %struct.termp*, %struct.termp** %3, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @term_strlen(%struct.termp* %28, i8* %29)
  store i64 %30, i64* %7, align 8
  %31 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %32 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %35 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @mandoc_asprintf(i8** %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load %struct.termp*, %struct.termp** %3, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i64 @term_strlen(%struct.termp* %38, i8* %39)
  store i64 %40, i64* %8, align 8
  %41 = load i32, i32* @TERMP_NOBREAK, align 4
  %42 = load i32, i32* @TERMP_NOSPACE, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.termp*, %struct.termp** %3, align 8
  %45 = getelementptr inbounds %struct.termp, %struct.termp* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.termp*, %struct.termp** %3, align 8
  %49 = getelementptr inbounds %struct.termp, %struct.termp* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.termp*, %struct.termp** %3, align 8
  %51 = getelementptr inbounds %struct.termp, %struct.termp* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  %56 = mul i64 2, %55
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %56, %57
  %59 = load %struct.termp*, %struct.termp** %3, align 8
  %60 = getelementptr inbounds %struct.termp, %struct.termp* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %58, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %26
  %65 = load %struct.termp*, %struct.termp** %3, align 8
  %66 = getelementptr inbounds %struct.termp, %struct.termp* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %7, align 8
  %70 = sub i64 %68, %69
  %71 = load %struct.termp*, %struct.termp** %3, align 8
  %72 = call i64 @term_len(%struct.termp* %71, i32 1)
  %73 = add i64 %70, %72
  %74 = udiv i64 %73, 2
  br label %92

75:                                               ; preds = %26
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.termp*, %struct.termp** %3, align 8
  %78 = getelementptr inbounds %struct.termp, %struct.termp* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = icmp ult i64 %76, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load %struct.termp*, %struct.termp** %3, align 8
  %84 = getelementptr inbounds %struct.termp, %struct.termp* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* %7, align 8
  %88 = sub i64 %86, %87
  br label %90

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %82
  %91 = phi i64 [ %88, %82 ], [ 0, %89 ]
  br label %92

92:                                               ; preds = %90, %64
  %93 = phi i64 [ %74, %64 ], [ %91, %90 ]
  %94 = load %struct.termp*, %struct.termp** %3, align 8
  %95 = getelementptr inbounds %struct.termp, %struct.termp* %94, i32 0, i32 4
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i64 %93, i64* %97, align 8
  %98 = load %struct.termp*, %struct.termp** %3, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @term_word(%struct.termp* %98, i8* %99)
  %101 = load %struct.termp*, %struct.termp** %3, align 8
  %102 = call i32 @term_flushln(%struct.termp* %101)
  %103 = load i32, i32* @TERMP_NOSPACE, align 4
  %104 = load %struct.termp*, %struct.termp** %3, align 8
  %105 = getelementptr inbounds %struct.termp, %struct.termp* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load %struct.termp*, %struct.termp** %3, align 8
  %109 = getelementptr inbounds %struct.termp, %struct.termp* %108, i32 0, i32 4
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.termp*, %struct.termp** %3, align 8
  %114 = getelementptr inbounds %struct.termp, %struct.termp* %113, i32 0, i32 4
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i64 %112, i64* %116, align 8
  %117 = load %struct.termp*, %struct.termp** %3, align 8
  %118 = getelementptr inbounds %struct.termp, %struct.termp* %117, i32 0, i32 4
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %121, %122
  %124 = load i64, i64* %8, align 8
  %125 = add i64 %123, %124
  %126 = load %struct.termp*, %struct.termp** %3, align 8
  %127 = getelementptr inbounds %struct.termp, %struct.termp* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = icmp ult i64 %125, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %92
  %132 = load %struct.termp*, %struct.termp** %3, align 8
  %133 = getelementptr inbounds %struct.termp, %struct.termp* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %8, align 8
  %137 = sub i64 %135, %136
  br label %143

138:                                              ; preds = %92
  %139 = load %struct.termp*, %struct.termp** %3, align 8
  %140 = getelementptr inbounds %struct.termp, %struct.termp* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  br label %143

143:                                              ; preds = %138, %131
  %144 = phi i64 [ %137, %131 ], [ %142, %138 ]
  %145 = load %struct.termp*, %struct.termp** %3, align 8
  %146 = getelementptr inbounds %struct.termp, %struct.termp* %145, i32 0, i32 4
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  store i64 %144, i64* %148, align 8
  %149 = load %struct.termp*, %struct.termp** %3, align 8
  %150 = load i8*, i8** %5, align 8
  %151 = call i32 @term_word(%struct.termp* %149, i8* %150)
  %152 = load %struct.termp*, %struct.termp** %3, align 8
  %153 = call i32 @term_flushln(%struct.termp* %152)
  %154 = load i32, i32* @TERMP_NOBREAK, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.termp*, %struct.termp** %3, align 8
  %157 = getelementptr inbounds %struct.termp, %struct.termp* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = load %struct.termp*, %struct.termp** %3, align 8
  %161 = getelementptr inbounds %struct.termp, %struct.termp* %160, i32 0, i32 1
  store i32 0, i32* %161, align 4
  %162 = load %struct.termp*, %struct.termp** %3, align 8
  %163 = getelementptr inbounds %struct.termp, %struct.termp* %162, i32 0, i32 4
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %8, align 8
  %168 = add i64 %166, %167
  %169 = load %struct.termp*, %struct.termp** %3, align 8
  %170 = getelementptr inbounds %struct.termp, %struct.termp* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = icmp ule i64 %168, %172
  br i1 %173, label %174, label %202

174:                                              ; preds = %143
  %175 = load i32, i32* @TERMP_NOSPACE, align 4
  %176 = load %struct.termp*, %struct.termp** %3, align 8
  %177 = getelementptr inbounds %struct.termp, %struct.termp* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 8
  %180 = load %struct.termp*, %struct.termp** %3, align 8
  %181 = getelementptr inbounds %struct.termp, %struct.termp* %180, i32 0, i32 4
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.termp*, %struct.termp** %3, align 8
  %186 = getelementptr inbounds %struct.termp, %struct.termp* %185, i32 0, i32 4
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  store i64 %184, i64* %188, align 8
  %189 = load %struct.termp*, %struct.termp** %3, align 8
  %190 = getelementptr inbounds %struct.termp, %struct.termp* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = load %struct.termp*, %struct.termp** %3, align 8
  %194 = getelementptr inbounds %struct.termp, %struct.termp* %193, i32 0, i32 4
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 1
  store i64 %192, i64* %196, align 8
  %197 = load %struct.termp*, %struct.termp** %3, align 8
  %198 = load i8*, i8** %6, align 8
  %199 = call i32 @term_word(%struct.termp* %197, i8* %198)
  %200 = load %struct.termp*, %struct.termp** %3, align 8
  %201 = call i32 @term_flushln(%struct.termp* %200)
  br label %202

202:                                              ; preds = %174, %143
  %203 = load i32, i32* @TERMP_NOSPACE, align 4
  %204 = xor i32 %203, -1
  %205 = load %struct.termp*, %struct.termp** %3, align 8
  %206 = getelementptr inbounds %struct.termp, %struct.termp* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = and i32 %207, %204
  store i32 %208, i32* %206, align 8
  %209 = load %struct.termp*, %struct.termp** %3, align 8
  %210 = getelementptr inbounds %struct.termp, %struct.termp* %209, i32 0, i32 4
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  store i64 0, i64* %212, align 8
  %213 = load %struct.termp*, %struct.termp** %3, align 8
  %214 = getelementptr inbounds %struct.termp, %struct.termp* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = load %struct.termp*, %struct.termp** %3, align 8
  %218 = getelementptr inbounds %struct.termp, %struct.termp* %217, i32 0, i32 4
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  store i64 %216, i64* %220, align 8
  %221 = load %struct.termp*, %struct.termp** %3, align 8
  %222 = call i32 @term_vspace(%struct.termp* %221)
  %223 = load %struct.termp*, %struct.termp** %3, align 8
  %224 = getelementptr inbounds %struct.termp, %struct.termp* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %232, label %227

227:                                              ; preds = %202
  %228 = load %struct.termp*, %struct.termp** %3, align 8
  %229 = call i32 @term_vspace(%struct.termp* %228)
  %230 = load %struct.termp*, %struct.termp** %3, align 8
  %231 = call i32 @term_vspace(%struct.termp* %230)
  br label %232

232:                                              ; preds = %227, %202
  %233 = load i8*, i8** %6, align 8
  %234 = call i32 @free(i8* %233)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @term_strlen(%struct.termp*, i8*) #1

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i32, i32) #1

declare dso_local i64 @term_len(%struct.termp*, i32) #1

declare dso_local i32 @term_word(%struct.termp*, i8*) #1

declare dso_local i32 @term_flushln(%struct.termp*) #1

declare dso_local i32 @term_vspace(%struct.termp*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
