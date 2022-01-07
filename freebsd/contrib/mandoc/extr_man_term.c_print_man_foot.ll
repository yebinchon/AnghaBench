; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_term.c_print_man_foot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_term.c_print_man_foot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.roff_meta = type { i8*, i8*, i8*, i8*, i64 }

@TERMFONT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TERMP_NOSPACE = common dso_local global i32 0, align 4
@TERMP_NOBREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, %struct.roff_meta*)* @print_man_foot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_man_foot(%struct.termp* %0, %struct.roff_meta* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca %struct.roff_meta*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.termp* %0, %struct.termp** %3, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %4, align 8
  %8 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %9 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @assert(i8* %10)
  %12 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %13 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @assert(i8* %14)
  %16 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %17 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @assert(i8* %18)
  %20 = load %struct.termp*, %struct.termp** %3, align 8
  %21 = load i32, i32* @TERMFONT_NONE, align 4
  %22 = call i32 @term_fontrepl(%struct.termp* %20, i32 %21)
  %23 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %24 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.termp*, %struct.termp** %3, align 8
  %29 = call i32 @term_vspace(%struct.termp* %28)
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.termp*, %struct.termp** %3, align 8
  %32 = getelementptr inbounds %struct.termp, %struct.termp* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %30
  %36 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %37 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.termp*, %struct.termp** %3, align 8
  %42 = call i32 @term_vspace(%struct.termp* %41)
  %43 = load %struct.termp*, %struct.termp** %3, align 8
  %44 = call i32 @term_vspace(%struct.termp* %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %47 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %50 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @mandoc_asprintf(i8** %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %48, i8* %51)
  br label %66

53:                                               ; preds = %30
  %54 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %55 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %60 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %59, i32 0, i32 3
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @mandoc_strdup(i8* %61)
  store i8* %62, i8** %5, align 8
  br label %65

63:                                               ; preds = %53
  %64 = call i8* @mandoc_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %63, %58
  br label %66

66:                                               ; preds = %65, %45
  %67 = load %struct.termp*, %struct.termp** %3, align 8
  %68 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %69 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @term_strlen(%struct.termp* %67, i8* %70)
  store i64 %71, i64* %6, align 8
  %72 = load i32, i32* @TERMP_NOSPACE, align 4
  %73 = load i32, i32* @TERMP_NOBREAK, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.termp*, %struct.termp** %3, align 8
  %76 = getelementptr inbounds %struct.termp, %struct.termp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.termp*, %struct.termp** %3, align 8
  %80 = getelementptr inbounds %struct.termp, %struct.termp* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  %81 = load %struct.termp*, %struct.termp** %3, align 8
  %82 = getelementptr inbounds %struct.termp, %struct.termp* %81, i32 0, i32 3
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.termp*, %struct.termp** %3, align 8
  %86 = getelementptr inbounds %struct.termp, %struct.termp* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = icmp ugt i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %66
  %91 = load %struct.termp*, %struct.termp** %3, align 8
  %92 = getelementptr inbounds %struct.termp, %struct.termp* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.termp*, %struct.termp** %3, align 8
  %95 = call i64 @term_len(%struct.termp* %94, i32 1)
  %96 = add i64 %93, %95
  %97 = load i64, i64* %6, align 8
  %98 = sub i64 %96, %97
  %99 = udiv i64 %98, 2
  br label %101

100:                                              ; preds = %66
  br label %101

101:                                              ; preds = %100, %90
  %102 = phi i64 [ %99, %90 ], [ 0, %100 ]
  %103 = load %struct.termp*, %struct.termp** %3, align 8
  %104 = getelementptr inbounds %struct.termp, %struct.termp* %103, i32 0, i32 3
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  store i64 %102, i64* %106, align 8
  %107 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %108 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %107, i32 0, i32 3
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %117

111:                                              ; preds = %101
  %112 = load %struct.termp*, %struct.termp** %3, align 8
  %113 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %114 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @term_word(%struct.termp* %112, i8* %115)
  br label %117

117:                                              ; preds = %111, %101
  %118 = load %struct.termp*, %struct.termp** %3, align 8
  %119 = call i32 @term_flushln(%struct.termp* %118)
  %120 = load %struct.termp*, %struct.termp** %3, align 8
  %121 = getelementptr inbounds %struct.termp, %struct.termp* %120, i32 0, i32 3
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.termp*, %struct.termp** %3, align 8
  %126 = getelementptr inbounds %struct.termp, %struct.termp* %125, i32 0, i32 3
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i64 %124, i64* %128, align 8
  %129 = load %struct.termp*, %struct.termp** %3, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = call i64 @term_strlen(%struct.termp* %129, i8* %130)
  store i64 %131, i64* %7, align 8
  %132 = load %struct.termp*, %struct.termp** %3, align 8
  %133 = getelementptr inbounds %struct.termp, %struct.termp* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %7, align 8
  %136 = icmp ugt i64 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %117
  %138 = load %struct.termp*, %struct.termp** %3, align 8
  %139 = getelementptr inbounds %struct.termp, %struct.termp* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %7, align 8
  %142 = sub i64 %140, %141
  br label %144

143:                                              ; preds = %117
  br label %144

144:                                              ; preds = %143, %137
  %145 = phi i64 [ %142, %137 ], [ 0, %143 ]
  %146 = load %struct.termp*, %struct.termp** %3, align 8
  %147 = getelementptr inbounds %struct.termp, %struct.termp* %146, i32 0, i32 3
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  store i64 %145, i64* %149, align 8
  %150 = load i32, i32* @TERMP_NOSPACE, align 4
  %151 = load %struct.termp*, %struct.termp** %3, align 8
  %152 = getelementptr inbounds %struct.termp, %struct.termp* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load %struct.termp*, %struct.termp** %3, align 8
  %156 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %157 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @term_word(%struct.termp* %155, i8* %158)
  %160 = load %struct.termp*, %struct.termp** %3, align 8
  %161 = call i32 @term_flushln(%struct.termp* %160)
  %162 = load i32, i32* @TERMP_NOBREAK, align 4
  %163 = xor i32 %162, -1
  %164 = load %struct.termp*, %struct.termp** %3, align 8
  %165 = getelementptr inbounds %struct.termp, %struct.termp* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = and i32 %166, %163
  store i32 %167, i32* %165, align 8
  %168 = load i32, i32* @TERMP_NOSPACE, align 4
  %169 = load %struct.termp*, %struct.termp** %3, align 8
  %170 = getelementptr inbounds %struct.termp, %struct.termp* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load %struct.termp*, %struct.termp** %3, align 8
  %174 = getelementptr inbounds %struct.termp, %struct.termp* %173, i32 0, i32 1
  store i32 0, i32* %174, align 4
  %175 = load %struct.termp*, %struct.termp** %3, align 8
  %176 = getelementptr inbounds %struct.termp, %struct.termp* %175, i32 0, i32 3
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.termp*, %struct.termp** %3, align 8
  %181 = getelementptr inbounds %struct.termp, %struct.termp* %180, i32 0, i32 3
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  store i64 %179, i64* %183, align 8
  %184 = load %struct.termp*, %struct.termp** %3, align 8
  %185 = getelementptr inbounds %struct.termp, %struct.termp* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.termp*, %struct.termp** %3, align 8
  %188 = getelementptr inbounds %struct.termp, %struct.termp* %187, i32 0, i32 3
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  store i64 %186, i64* %190, align 8
  %191 = load %struct.termp*, %struct.termp** %3, align 8
  %192 = load i8*, i8** %5, align 8
  %193 = call i32 @term_word(%struct.termp* %191, i8* %192)
  %194 = load %struct.termp*, %struct.termp** %3, align 8
  %195 = call i32 @term_flushln(%struct.termp* %194)
  %196 = load %struct.termp*, %struct.termp** %3, align 8
  %197 = getelementptr inbounds %struct.termp, %struct.termp* %196, i32 0, i32 3
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  store i64 0, i64* %199, align 8
  %200 = load %struct.termp*, %struct.termp** %3, align 8
  %201 = getelementptr inbounds %struct.termp, %struct.termp* %200, i32 0, i32 0
  store i32 0, i32* %201, align 8
  %202 = load i8*, i8** %5, align 8
  %203 = call i32 @free(i8* %202)
  ret void
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @term_fontrepl(%struct.termp*, i32) #1

declare dso_local i32 @term_vspace(%struct.termp*) #1

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i8* @mandoc_strdup(i8*) #1

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
