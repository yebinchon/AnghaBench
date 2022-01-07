; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_parse_get_cname_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_parse_get_cname_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_parse = type { i32, i32, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.rr_parse* }
%struct.TYPE_2__ = type { i32, i32*, i32* }
%struct.rr_parse = type { i64, %struct.rr_parse* }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Found CNAME rrset with size > 1: %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rrset_parse*, i32**, i64*)* @parse_get_cname_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_get_cname_target(%struct.rrset_parse* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rrset_parse*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.rr_parse*, align 8
  store %struct.rrset_parse* %0, %struct.rrset_parse** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %10 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %58

13:                                               ; preds = %3
  %14 = load i32, i32* @VERB_ALGO, align 4
  %15 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %16 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @verbose(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %20 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %22 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %27 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %29 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %28, i32 0, i32 4
  %30 = load %struct.rr_parse*, %struct.rr_parse** %29, align 8
  store %struct.rr_parse* %30, %struct.rr_parse** %8, align 8
  br label %31

31:                                               ; preds = %44, %13
  %32 = load %struct.rr_parse*, %struct.rr_parse** %8, align 8
  %33 = icmp ne %struct.rr_parse* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load %struct.rr_parse*, %struct.rr_parse** %8, align 8
  %36 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %39 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  br label %44

44:                                               ; preds = %34
  %45 = load %struct.rr_parse*, %struct.rr_parse** %8, align 8
  %46 = getelementptr inbounds %struct.rr_parse, %struct.rr_parse* %45, i32 0, i32 1
  %47 = load %struct.rr_parse*, %struct.rr_parse** %46, align 8
  store %struct.rr_parse* %47, %struct.rr_parse** %8, align 8
  br label %31

48:                                               ; preds = %31
  %49 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %50 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %53 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %52, i32 0, i32 3
  store %struct.TYPE_2__* %51, %struct.TYPE_2__** %53, align 8
  %54 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %55 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %48, %3
  %59 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %60 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %64, 5
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 0, i32* %4, align 4
  br label %84

67:                                               ; preds = %58
  %68 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %69 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32**, i32*** %6, align 8
  store i32* %74, i32** %75, align 8
  %76 = load %struct.rrset_parse*, %struct.rrset_parse** %5, align 8
  %77 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = sub i64 %81, 4
  %83 = load i64*, i64** %7, align 8
  store i64 %82, i64* %83, align 8
  store i32 1, i32* %4, align 4
  br label %84

84:                                               ; preds = %67, %66
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @verbose(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
