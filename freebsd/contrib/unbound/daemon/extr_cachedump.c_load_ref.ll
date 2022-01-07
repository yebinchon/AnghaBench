; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_load_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_cachedump.c_load_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.regional = type { i32 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.query_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"BADREF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"error cannot parse flags: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.worker*, %struct.regional*, %struct.ub_packed_rrset_key**, i32*)* @load_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_ref(i32* %0, i32* %1, %struct.worker* %2, %struct.regional* %3, %struct.ub_packed_rrset_key** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.worker*, align 8
  %11 = alloca %struct.regional*, align 8
  %12 = alloca %struct.ub_packed_rrset_key**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.query_info, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ub_packed_rrset_key*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.worker* %2, %struct.worker** %10, align 8
  store %struct.regional* %3, %struct.regional** %11, align 8
  store %struct.ub_packed_rrset_key** %4, %struct.ub_packed_rrset_key*** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = call i64 @sldns_buffer_begin(i32* %18)
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %14, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @ssl_read_buf(i32* %21, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %88

26:                                               ; preds = %6
  %27 = load i8*, i8** %14, align 8
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32*, i32** %13, align 8
  store i32 0, i32* %31, align 4
  store i32 1, i32* %7, align 4
  br label %88

32:                                               ; preds = %26
  %33 = load i8*, i8** %14, align 8
  %34 = load %struct.regional*, %struct.regional** %11, align 8
  %35 = call i8* @load_qinfo(i8* %33, %struct.query_info* %15, %struct.regional* %34)
  store i8* %35, i8** %14, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %88

39:                                               ; preds = %32
  %40 = load i8*, i8** %14, align 8
  %41 = call i32 @sscanf(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %16)
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @log_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  store i32 0, i32* %7, align 4
  br label %88

46:                                               ; preds = %39
  %47 = load %struct.worker*, %struct.worker** %10, align 8
  %48 = getelementptr inbounds %struct.worker, %struct.worker* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.query_info, %struct.query_info* %15, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.query_info, %struct.query_info* %15, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.query_info, %struct.query_info* %15, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.query_info, %struct.query_info* %15, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.worker*, %struct.worker** %10, align 8
  %61 = getelementptr inbounds %struct.worker, %struct.worker* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32 %50, i32 %52, i32 %54, i32 %56, i32 %58, i32 %59, i32 %64, i32 0)
  store %struct.ub_packed_rrset_key* %65, %struct.ub_packed_rrset_key** %17, align 8
  %66 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %67 = icmp ne %struct.ub_packed_rrset_key* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %46
  %69 = load i32*, i32** %13, align 8
  store i32 0, i32* %69, align 4
  store i32 1, i32* %7, align 4
  br label %88

70:                                               ; preds = %46
  %71 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %72 = load %struct.regional*, %struct.regional** %11, align 8
  %73 = load %struct.worker*, %struct.worker** %10, align 8
  %74 = getelementptr inbounds %struct.worker, %struct.worker* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key* %71, %struct.regional* %72, i32 %77)
  %79 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %12, align 8
  store %struct.ub_packed_rrset_key* %78, %struct.ub_packed_rrset_key** %79, align 8
  %80 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %17, align 8
  %81 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = call i32 @lock_rw_unlock(i32* %82)
  %84 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %12, align 8
  %85 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %84, align 8
  %86 = icmp ne %struct.ub_packed_rrset_key* %85, null
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %70, %68, %43, %38, %30, %25
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i64 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @ssl_read_buf(i32*, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @load_qinfo(i8*, %struct.query_info*, %struct.regional*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @log_warn(i8*, i8*) #1

declare dso_local %struct.ub_packed_rrset_key* @rrset_cache_lookup(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ub_packed_rrset_key* @packed_rrset_copy_region(%struct.ub_packed_rrset_key*, %struct.regional*, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
