; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_setup_qinfo_edns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_setup_qinfo_edns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libworker = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ctx_query = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.query_info = type { i32*, i32, i32, i8*, i8* }
%struct.edns_data = type { i32, i32, i32*, i32, i64, i64 }

@EDNS_DO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libworker*, %struct.ctx_query*, %struct.query_info*, %struct.edns_data*)* @setup_qinfo_edns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_qinfo_edns(%struct.libworker* %0, %struct.ctx_query* %1, %struct.query_info* %2, %struct.edns_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libworker*, align 8
  %7 = alloca %struct.ctx_query*, align 8
  %8 = alloca %struct.query_info*, align 8
  %9 = alloca %struct.edns_data*, align 8
  store %struct.libworker* %0, %struct.libworker** %6, align 8
  store %struct.ctx_query* %1, %struct.ctx_query** %7, align 8
  store %struct.query_info* %2, %struct.query_info** %8, align 8
  store %struct.edns_data* %3, %struct.edns_data** %9, align 8
  %10 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %11 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = load %struct.query_info*, %struct.query_info** %8, align 8
  %17 = getelementptr inbounds %struct.query_info, %struct.query_info* %16, i32 0, i32 4
  store i8* %15, i8** %17, align 8
  %18 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %19 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.query_info*, %struct.query_info** %8, align 8
  %25 = getelementptr inbounds %struct.query_info, %struct.query_info* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.query_info*, %struct.query_info** %8, align 8
  %27 = getelementptr inbounds %struct.query_info, %struct.query_info* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.ctx_query*, %struct.ctx_query** %7, align 8
  %29 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.query_info*, %struct.query_info** %8, align 8
  %34 = getelementptr inbounds %struct.query_info, %struct.query_info* %33, i32 0, i32 2
  %35 = call i32 @sldns_str2wire_dname(i32 %32, i32* %34)
  %36 = load %struct.query_info*, %struct.query_info** %8, align 8
  %37 = getelementptr inbounds %struct.query_info, %struct.query_info* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.query_info*, %struct.query_info** %8, align 8
  %39 = getelementptr inbounds %struct.query_info, %struct.query_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %80

43:                                               ; preds = %4
  %44 = load %struct.query_info*, %struct.query_info** %8, align 8
  %45 = getelementptr inbounds %struct.query_info, %struct.query_info* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  %46 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %47 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %49 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %51 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @EDNS_DO, align 4
  %53 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %54 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %56 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = load %struct.libworker*, %struct.libworker** %6, align 8
  %58 = getelementptr inbounds %struct.libworker, %struct.libworker* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @sldns_buffer_capacity(i32 %61)
  %63 = icmp slt i32 %62, 65535
  br i1 %63, label %64, label %76

64:                                               ; preds = %43
  %65 = load %struct.libworker*, %struct.libworker** %6, align 8
  %66 = getelementptr inbounds %struct.libworker, %struct.libworker* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @sldns_buffer_capacity(i32 %69)
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %75 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %79

76:                                               ; preds = %43
  %77 = load %struct.edns_data*, %struct.edns_data** %9, align 8
  %78 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %77, i32 0, i32 1
  store i32 65535, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %64
  store i32 1, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %42
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @sldns_str2wire_dname(i32, i32*) #1

declare dso_local i32 @sldns_buffer_capacity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
