; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_apply_axfr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_apply_axfr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32, i32 }
%struct.auth_zone = type { i32 }
%struct.sldns_buffer = type { i32 }
%struct.auth_chunk = type { i32, i32 }

@auth_data_del = common dso_local global i32 0, align 4
@auth_data_cmp = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"apply_axfr\00", align 1
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"no end SOA record for AXFR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_xfer*, %struct.auth_zone*, %struct.sldns_buffer*)* @apply_axfr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_axfr(%struct.auth_xfer* %0, %struct.auth_zone* %1, %struct.sldns_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_xfer*, align 8
  %6 = alloca %struct.auth_zone*, align 8
  %7 = alloca %struct.sldns_buffer*, align 8
  %8 = alloca %struct.auth_chunk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.auth_xfer* %0, %struct.auth_xfer** %5, align 8
  store %struct.auth_zone* %1, %struct.auth_zone** %6, align 8
  store %struct.sldns_buffer* %2, %struct.sldns_buffer** %7, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %22 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %21, i32 0, i32 0
  %23 = load i32, i32* @auth_data_del, align 4
  %24 = call i32 @traverse_postorder(i32* %22, i32 %23, i32* null)
  %25 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %26 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %25, i32 0, i32 0
  %27 = call i32 @rbtree_init(i32* %26, i32* @auth_data_cmp)
  %28 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %29 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %31 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %33 = call i32 @chunk_rrlist_start(%struct.auth_xfer* %32, %struct.auth_chunk** %8, i32* %9, i64* %10)
  br label %34

34:                                               ; preds = %92, %3
  %35 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @chunk_rrlist_end(%struct.auth_chunk* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %97

40:                                               ; preds = %34
  %41 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @chunk_rrlist_get_current(%struct.auth_chunk* %41, i32 %42, i64 %43, i32** %11, i64* %13, i64* %14, i32* %16, i64* %15, i32** %12, i64* %18)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %108

47:                                               ; preds = %40
  %48 = load i32, i32* @verbosity, align 4
  %49 = icmp sge i32 %48, 7
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* %19, align 8
  %55 = call i32 @log_rrlist_position(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.auth_chunk* %51, i32* %52, i64 %53, i64 %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i64, i64* %19, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 1, i32* %20, align 4
  br label %97

64:                                               ; preds = %60
  %65 = load i64, i64* %15, align 8
  %66 = icmp slt i64 %65, 22
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %108

68:                                               ; preds = %64
  %69 = load i32*, i32** %12, align 8
  %70 = load i64, i64* %15, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = getelementptr inbounds i32, i32* %71, i64 -20
  %73 = call i32 @sldns_read_uint32(i32* %72)
  store i32 %73, i32* %17, align 4
  br label %74

74:                                               ; preds = %68, %56
  %75 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %76 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %77 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %80 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sldns_buffer*, %struct.sldns_buffer** %7, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i32, i32* %16, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @az_insert_rr_decompress(%struct.auth_zone* %75, i32 %78, i32 %81, %struct.sldns_buffer* %82, i32* %83, i64 %84, i64 %85, i32 %86, i32* %87, i64 %88, i32* null)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %108

92:                                               ; preds = %74
  %93 = load i64, i64* %19, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %19, align 8
  %95 = load i64, i64* %18, align 8
  %96 = call i32 @chunk_rrlist_gonext(%struct.auth_chunk** %8, i32* %9, i64* %10, i64 %95)
  br label %34

97:                                               ; preds = %63, %34
  %98 = load i32, i32* %20, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = call i32 @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %108

102:                                              ; preds = %97
  %103 = load i32, i32* %17, align 4
  %104 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %105 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %107 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %106, i32 0, i32 0
  store i32 1, i32* %107, align 4
  store i32 1, i32* %4, align 4
  br label %108

108:                                              ; preds = %102, %100, %91, %67, %46
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @traverse_postorder(i32*, i32, i32*) #1

declare dso_local i32 @rbtree_init(i32*, i32*) #1

declare dso_local i32 @chunk_rrlist_start(%struct.auth_xfer*, %struct.auth_chunk**, i32*, i64*) #1

declare dso_local i32 @chunk_rrlist_end(%struct.auth_chunk*, i32) #1

declare dso_local i32 @chunk_rrlist_get_current(%struct.auth_chunk*, i32, i64, i32**, i64*, i64*, i32*, i64*, i32**, i64*) #1

declare dso_local i32 @log_rrlist_position(i8*, %struct.auth_chunk*, i32*, i64, i64) #1

declare dso_local i32 @sldns_read_uint32(i32*) #1

declare dso_local i32 @az_insert_rr_decompress(%struct.auth_zone*, i32, i32, %struct.sldns_buffer*, i32*, i64, i64, i32, i32*, i64, i32*) #1

declare dso_local i32 @chunk_rrlist_gonext(%struct.auth_chunk**, i32*, i64*, i64) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
