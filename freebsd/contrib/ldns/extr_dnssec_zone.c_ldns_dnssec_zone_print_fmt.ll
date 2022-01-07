; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_zone.c_ldns_dnssec_zone_print_fmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_zone.c_ldns_dnssec_zone_print_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }

@LDNS_COMMENT_LAYOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c";; Zone: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\0A;\0A\00", align 1
@LDNS_RR_TYPE_SOA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_dnssec_zone_print_fmt(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %6, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = icmp ne %struct.TYPE_8__* %7, null
  br i1 %8, label %9, label %64

9:                                                ; preds = %3
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %9
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LDNS_COMMENT_LAYOUT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @fprintf(i32* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ldns_dnssec_name_name(i64 %27)
  %29 = call i32 @ldns_rdf_print(i32* %24, i32 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @fprintf(i32* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %21, %14
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @LDNS_RR_TYPE_SOA, align 4
  %39 = call i32 @ldns_dnssec_name_find_rrset(i64 %37, i32 %38)
  %40 = call i32 @ldns_dnssec_rrsets_print_fmt(i32* %33, %struct.TYPE_7__* %34, i32 %39, i32 0)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @LDNS_COMMENT_LAYOUT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @fprintf(i32* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %32
  br label %51

51:                                               ; preds = %50, %9
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32*, i32** %4, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @ldns_dnssec_zone_names_print_fmt(i32* %57, %struct.TYPE_7__* %58, i64 %61, i32 0)
  br label %63

63:                                               ; preds = %56, %51
  br label %64

64:                                               ; preds = %63, %3
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @ldns_rdf_print(i32*, i32) #1

declare dso_local i32 @ldns_dnssec_name_name(i64) #1

declare dso_local i32 @ldns_dnssec_rrsets_print_fmt(i32*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ldns_dnssec_name_find_rrset(i64, i32) #1

declare dso_local i32 @ldns_dnssec_zone_names_print_fmt(i32*, %struct.TYPE_7__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
