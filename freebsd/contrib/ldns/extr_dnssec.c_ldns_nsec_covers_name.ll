; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_nsec_covers_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec.c_ldns_nsec_covers_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC3 = common dso_local global i64 0, align 8
@LDNS_STATUS_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"error catting: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_nsec_covers_name(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @ldns_rr_owner(i32* %13)
  store i32* %14, i32** %6, align 8
  store i32* null, i32** %9, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @ldns_rr_get_type(i32* %15)
  %17 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @ldns_rr_rdf(i32* %20, i32 0)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = call i32* @ldns_rr_rdf(i32* %24, i32 0)
  %26 = call i32* @ldns_rdf_clone(i32* %25)
  store i32* %26, i32** %9, align 8
  br label %28

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %104

28:                                               ; preds = %23
  br label %62

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = call i64 @ldns_rr_get_type(i32* %30)
  %32 = load i64, i64* @LDNS_RR_TYPE_NSEC3, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  %36 = call i32* @ldns_nsec3_next_owner(i32* %35)
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i8* @ldns_rdf2str(i32* %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = call i32* @ldns_dname_new_frm_str(i8* %39)
  store i32* %40, i32** %9, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @LDNS_FREE(i8* %41)
  %43 = load i32*, i32** %6, align 8
  %44 = call i32* @ldns_dname_left_chop(i32* %43)
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 @ldns_dname_cat(i32* %45, i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = call i32 @ldns_rdf_deep_free(i32* %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @LDNS_STATUS_OK, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %34
  %54 = load i32, i32* %10, align 4
  %55 = call i8* @ldns_get_errorstr_by_id(i32 %54)
  %56 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %53, %34
  br label %61

58:                                               ; preds = %29
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @ldns_rdf_deep_free(i32* %59)
  store i32 0, i32* %3, align 4
  br label %104

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61, %28
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @ldns_dname_compare(i32* %63, i32* %64)
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load i32*, i32** %6, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call i64 @ldns_dname_compare(i32* %68, i32* %69)
  %71 = icmp sle i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i64 @ldns_dname_compare(i32* %73, i32* %74)
  %76 = icmp slt i64 %75, 0
  br label %77

77:                                               ; preds = %72, %67
  %78 = phi i1 [ true, %67 ], [ %76, %72 ]
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %12, align 4
  br label %100

80:                                               ; preds = %62
  %81 = load i32*, i32** %6, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call i64 @ldns_dname_compare(i32* %81, i32* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %80
  %86 = load i32*, i32** %6, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i64 @ldns_dname_compare(i32* %86, i32* %87)
  %89 = icmp sle i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i64 @ldns_dname_compare(i32* %91, i32* %92)
  %94 = icmp slt i64 %93, 0
  br label %95

95:                                               ; preds = %90, %85
  %96 = phi i1 [ false, %85 ], [ %94, %90 ]
  %97 = zext i1 %96 to i32
  store i32 %97, i32* %12, align 4
  br label %99

98:                                               ; preds = %80
  store i32 1, i32* %12, align 4
  br label %99

99:                                               ; preds = %98, %95
  br label %100

100:                                              ; preds = %99, %77
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @ldns_rdf_deep_free(i32* %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %58, %27
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32* @ldns_rr_owner(i32*) #1

declare dso_local i64 @ldns_rr_get_type(i32*) #1

declare dso_local i32* @ldns_rr_rdf(i32*, i32) #1

declare dso_local i32* @ldns_rdf_clone(i32*) #1

declare dso_local i32* @ldns_nsec3_next_owner(i32*) #1

declare dso_local i8* @ldns_rdf2str(i32*) #1

declare dso_local i32* @ldns_dname_new_frm_str(i8*) #1

declare dso_local i32 @LDNS_FREE(i8*) #1

declare dso_local i32* @ldns_dname_left_chop(i32*) #1

declare dso_local i32 @ldns_dname_cat(i32*, i32*) #1

declare dso_local i32 @ldns_rdf_deep_free(i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @ldns_get_errorstr_by_id(i32) #1

declare dso_local i64 @ldns_dname_compare(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
