; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_stub_fwd_no_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_stub_fwd_no_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.query_info = type { i32, i32 }
%struct.iter_hints_stub = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.delegpt = type { i32, i32, i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"stub for %s %s has no_cache\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"forward for %s %s has no_cache\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iter_stub_fwd_no_cache(%struct.module_qstate* %0, %struct.query_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca %struct.query_info*, align 8
  %6 = alloca %struct.iter_hints_stub*, align 8
  %7 = alloca %struct.delegpt*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca [256 x i8], align 16
  %10 = alloca [256 x i8], align 16
  %11 = alloca [256 x i8], align 16
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store %struct.query_info* %1, %struct.query_info** %5, align 8
  %12 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %13 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.query_info*, %struct.query_info** %5, align 8
  %18 = getelementptr inbounds %struct.query_info, %struct.query_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.query_info*, %struct.query_info** %5, align 8
  %21 = getelementptr inbounds %struct.query_info, %struct.query_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.iter_hints_stub* @hints_lookup_stub(i32 %16, i32 %19, i32 %22, i32* null)
  store %struct.iter_hints_stub* %23, %struct.iter_hints_stub** %6, align 8
  %24 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %25 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.query_info*, %struct.query_info** %5, align 8
  %30 = getelementptr inbounds %struct.query_info, %struct.query_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.query_info*, %struct.query_info** %5, align 8
  %33 = getelementptr inbounds %struct.query_info, %struct.query_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.delegpt* @forwards_lookup(i32 %28, i32 %31, i32 %34)
  store %struct.delegpt* %35, %struct.delegpt** %7, align 8
  %36 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %6, align 8
  %37 = icmp ne %struct.iter_hints_stub* %36, null
  br i1 %37, label %38, label %68

38:                                               ; preds = %2
  %39 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %6, align 8
  %40 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp ne %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %68

43:                                               ; preds = %38
  %44 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %45 = icmp ne %struct.delegpt* %44, null
  br i1 %45, label %46, label %68

46:                                               ; preds = %43
  %47 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %48 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %51 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %6, align 8
  %54 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %6, align 8
  %59 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @dname_strict_subdomain(i32 %49, i32 %52, i32 %57, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %46
  store %struct.iter_hints_stub* null, %struct.iter_hints_stub** %6, align 8
  br label %67

66:                                               ; preds = %46
  store %struct.delegpt* null, %struct.delegpt** %7, align 8
  br label %67

67:                                               ; preds = %66, %65
  br label %68

68:                                               ; preds = %67, %43, %38, %2
  %69 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %6, align 8
  %70 = icmp ne %struct.iter_hints_stub* %69, null
  br i1 %70, label %71, label %106

71:                                               ; preds = %68
  %72 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %6, align 8
  %73 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = icmp ne %struct.TYPE_4__* %74, null
  br i1 %75, label %76, label %106

76:                                               ; preds = %71
  %77 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %6, align 8
  %78 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %76
  %84 = load %struct.query_info*, %struct.query_info** %5, align 8
  %85 = getelementptr inbounds %struct.query_info, %struct.query_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %88 = call i32 @dname_str(i32 %86, i8* %87)
  %89 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %6, align 8
  %90 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %95 = call i32 @dname_str(i32 %93, i8* %94)
  %96 = load i32, i32* @VERB_ALGO, align 4
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %99 = call i32 @verbose(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %97, i8* %98)
  br label %100

100:                                              ; preds = %83, %76
  %101 = load %struct.iter_hints_stub*, %struct.iter_hints_stub** %6, align 8
  %102 = getelementptr inbounds %struct.iter_hints_stub, %struct.iter_hints_stub* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %3, align 4
  br label %134

106:                                              ; preds = %71, %68
  %107 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %108 = icmp ne %struct.delegpt* %107, null
  br i1 %108, label %109, label %133

109:                                              ; preds = %106
  %110 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %111 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %109
  %115 = load %struct.query_info*, %struct.query_info** %5, align 8
  %116 = getelementptr inbounds %struct.query_info, %struct.query_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %119 = call i32 @dname_str(i32 %117, i8* %118)
  %120 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %121 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %124 = call i32 @dname_str(i32 %122, i8* %123)
  %125 = load i32, i32* @VERB_ALGO, align 4
  %126 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %127 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %128 = call i32 @verbose(i32 %125, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %126, i8* %127)
  br label %129

129:                                              ; preds = %114, %109
  %130 = load %struct.delegpt*, %struct.delegpt** %7, align 8
  %131 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %3, align 4
  br label %134

133:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %129, %100
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local %struct.iter_hints_stub* @hints_lookup_stub(i32, i32, i32, i32*) #1

declare dso_local %struct.delegpt* @forwards_lookup(i32, i32, i32) #1

declare dso_local i64 @dname_strict_subdomain(i32, i32, i32, i32) #1

declare dso_local i32 @dname_str(i32, i8*) #1

declare dso_local i32 @verbose(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
