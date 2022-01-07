; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_reply_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_reply_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.regional = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }

@rrset_canonical_sort_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reply_equal(%struct.reply_info* %0, %struct.reply_info* %1, %struct.regional* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reply_info*, align 8
  %6 = alloca %struct.reply_info*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ub_packed_rrset_key**, align 8
  %10 = alloca %struct.ub_packed_rrset_key**, align 8
  store %struct.reply_info* %0, %struct.reply_info** %5, align 8
  store %struct.reply_info* %1, %struct.reply_info** %6, align 8
  store %struct.regional* %2, %struct.regional** %7, align 8
  %11 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %12 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %15 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %66, label %18

18:                                               ; preds = %3
  %19 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %20 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %23 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %66, label %26

26:                                               ; preds = %18
  %27 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %28 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %31 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %66, label %34

34:                                               ; preds = %26
  %35 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %36 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %39 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %66, label %42

42:                                               ; preds = %34
  %43 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %44 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %47 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %66, label %50

50:                                               ; preds = %42
  %51 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %52 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %55 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %50
  %59 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %60 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %63 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58, %50, %42, %34, %26, %18, %3
  store i32 0, i32* %4, align 4
  br label %227

67:                                               ; preds = %58
  %68 = load %struct.regional*, %struct.regional** %7, align 8
  %69 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %70 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %73 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = mul i64 8, %75
  %77 = trunc i64 %76 to i32
  %78 = call i64 @regional_alloc_init(%struct.regional* %68, i32 %71, i32 %77)
  %79 = inttoptr i64 %78 to %struct.ub_packed_rrset_key**
  store %struct.ub_packed_rrset_key** %79, %struct.ub_packed_rrset_key*** %9, align 8
  %80 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %9, align 8
  %81 = icmp ne %struct.ub_packed_rrset_key** %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %227

83:                                               ; preds = %67
  %84 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %85 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %88 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %92 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  %95 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %96 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = icmp sle i64 %94, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @log_assert(i32 %100)
  %102 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %9, align 8
  %103 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %104 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %102, i64 %105
  %107 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %108 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @rrset_canonical_sort_cmp, align 4
  %111 = call i32 @qsort(%struct.ub_packed_rrset_key** %106, i64 %109, i32 8, i32 %110)
  %112 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %9, align 8
  %113 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %114 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %112, i64 %115
  %117 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %118 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %117, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %116, i64 %119
  %121 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %122 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* @rrset_canonical_sort_cmp, align 4
  %125 = call i32 @qsort(%struct.ub_packed_rrset_key** %120, i64 %123, i32 8, i32 %124)
  %126 = load %struct.regional*, %struct.regional** %7, align 8
  %127 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %128 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %131 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = mul i64 8, %133
  %135 = trunc i64 %134 to i32
  %136 = call i64 @regional_alloc_init(%struct.regional* %126, i32 %129, i32 %135)
  %137 = inttoptr i64 %136 to %struct.ub_packed_rrset_key**
  store %struct.ub_packed_rrset_key** %137, %struct.ub_packed_rrset_key*** %10, align 8
  %138 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %10, align 8
  %139 = icmp ne %struct.ub_packed_rrset_key** %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %83
  %141 = load %struct.regional*, %struct.regional** %7, align 8
  %142 = call i32 @regional_free_all(%struct.regional* %141)
  store i32 0, i32* %4, align 4
  br label %227

143:                                              ; preds = %83
  %144 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %145 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %144, i32 0, i32 3
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %148 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %146, %149
  %151 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %152 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %150, %153
  %155 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %156 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = icmp sle i64 %154, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @log_assert(i32 %160)
  %162 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %10, align 8
  %163 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %164 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %162, i64 %165
  %167 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %168 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* @rrset_canonical_sort_cmp, align 4
  %171 = call i32 @qsort(%struct.ub_packed_rrset_key** %166, i64 %169, i32 8, i32 %170)
  %172 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %10, align 8
  %173 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %174 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %172, i64 %175
  %177 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %178 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %176, i64 %179
  %181 = load %struct.reply_info*, %struct.reply_info** %6, align 8
  %182 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @rrset_canonical_sort_cmp, align 4
  %185 = call i32 @qsort(%struct.ub_packed_rrset_key** %180, i64 %183, i32 8, i32 %184)
  store i64 0, i64* %8, align 8
  br label %186

186:                                              ; preds = %221, %143
  %187 = load i64, i64* %8, align 8
  %188 = load %struct.reply_info*, %struct.reply_info** %5, align 8
  %189 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = icmp ult i64 %187, %191
  br i1 %192, label %193, label %224

193:                                              ; preds = %186
  %194 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %9, align 8
  %195 = load i64, i64* %8, align 8
  %196 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %194, i64 %195
  %197 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %196, align 8
  %198 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %10, align 8
  %199 = load i64, i64* %8, align 8
  %200 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %198, i64 %199
  %201 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %200, align 8
  %202 = call i32 @rrset_equal(%struct.ub_packed_rrset_key* %197, %struct.ub_packed_rrset_key* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %220, label %204

204:                                              ; preds = %193
  %205 = load %struct.regional*, %struct.regional** %7, align 8
  %206 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %9, align 8
  %207 = load i64, i64* %8, align 8
  %208 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %206, i64 %207
  %209 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %208, align 8
  %210 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %10, align 8
  %211 = load i64, i64* %8, align 8
  %212 = getelementptr inbounds %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %210, i64 %211
  %213 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %212, align 8
  %214 = call i32 @rrset_canonical_equal(%struct.regional* %205, %struct.ub_packed_rrset_key* %209, %struct.ub_packed_rrset_key* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %204
  %217 = load %struct.regional*, %struct.regional** %7, align 8
  %218 = call i32 @regional_free_all(%struct.regional* %217)
  store i32 0, i32* %4, align 4
  br label %227

219:                                              ; preds = %204
  br label %220

220:                                              ; preds = %219, %193
  br label %221

221:                                              ; preds = %220
  %222 = load i64, i64* %8, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %8, align 8
  br label %186

224:                                              ; preds = %186
  %225 = load %struct.regional*, %struct.regional** %7, align 8
  %226 = call i32 @regional_free_all(%struct.regional* %225)
  store i32 1, i32* %4, align 4
  br label %227

227:                                              ; preds = %224, %216, %140, %82, %66
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i64 @regional_alloc_init(%struct.regional*, i32, i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @qsort(%struct.ub_packed_rrset_key**, i64, i32, i32) #1

declare dso_local i32 @regional_free_all(%struct.regional*) #1

declare dso_local i32 @rrset_equal(%struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*) #1

declare dso_local i32 @rrset_canonical_equal(%struct.regional*, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
