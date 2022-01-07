; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_data_chain_print_fmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_dnssec_verify.c_ldns_dnssec_data_chain_print_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@ldns_rcodes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c";; rcode: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c";; qtype: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"TYPE%u\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c";; NODATA response\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"rrset:\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sigs:\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"<no data>\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldns_dnssec_data_chain_print_fmt(i32* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %98

11:                                               ; preds = %3
  %12 = load i32*, i32** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  call void @ldns_dnssec_data_chain_print_fmt(i32* %12, i32* %13, %struct.TYPE_9__* %16)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ldns_rr_list_rr_count(i32 %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %94

22:                                               ; preds = %11
  %23 = load i32, i32* @ldns_rcodes, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call %struct.TYPE_8__* @ldns_lookup_by_id(i32 %23, i32 %27)
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %7, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = icmp ne %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %31, %22
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call %struct.TYPE_7__* @ldns_rr_descript(i64 %40)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %8, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = icmp ne %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %67

55:                                               ; preds = %44, %37
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %60, %55
  br label %67

67:                                               ; preds = %66, %49
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ldns_rr_list_print_fmt(i32* %78, i32* %79, i32 %82)
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 (i32*, i8*, ...) @fprintf(i32* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @ldns_rr_list_print_fmt(i32* %86, i32* %87, i32 %90)
  %92 = load i32*, i32** %4, align 8
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %97

94:                                               ; preds = %11
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 (i32*, i8*, ...) @fprintf(i32* %95, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %75
  br label %98

98:                                               ; preds = %97, %3
  ret void
}

declare dso_local i64 @ldns_rr_list_rr_count(i32) #1

declare dso_local %struct.TYPE_8__* @ldns_lookup_by_id(i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_7__* @ldns_rr_descript(i64) #1

declare dso_local i32 @ldns_rr_list_print_fmt(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
