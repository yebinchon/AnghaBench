; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_delete_node_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svndumpfilter/extr_svndumpfilter.c_delete_node_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_baton_t = type { i32, i32, i32, i32, i64, %struct.revision_baton_t* }
%struct.revision_baton_t = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_STREAM_MALFORMED_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"Delta property block detected, but deltas are not enabled for node '%s' in original revision %ld\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*)* @delete_node_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @delete_node_property(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.node_baton_t*, align 8
  %7 = alloca %struct.revision_baton_t*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.node_baton_t*
  store %struct.node_baton_t* %9, %struct.node_baton_t** %6, align 8
  %10 = load %struct.node_baton_t*, %struct.node_baton_t** %6, align 8
  %11 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %10, i32 0, i32 5
  %12 = load %struct.revision_baton_t*, %struct.revision_baton_t** %11, align 8
  store %struct.revision_baton_t* %12, %struct.revision_baton_t** %7, align 8
  %13 = load %struct.node_baton_t*, %struct.node_baton_t** %6, align 8
  %14 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %18, i32** %3, align 8
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.node_baton_t*, %struct.node_baton_t** %6, align 8
  %21 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @SVN_ERR_STREAM_MALFORMED_DATA, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.node_baton_t*, %struct.node_baton_t** %6, align 8
  %28 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.revision_baton_t*, %struct.revision_baton_t** %7, align 8
  %31 = getelementptr inbounds %struct.revision_baton_t, %struct.revision_baton_t* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @svn_error_createf(i32 %25, i32* null, i32 %26, i32 %29, i32 %32)
  store i32* %33, i32** %3, align 8
  br label %43

34:                                               ; preds = %19
  %35 = load i32, i32* @TRUE, align 4
  %36 = load %struct.node_baton_t*, %struct.node_baton_t** %6, align 8
  %37 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.node_baton_t*, %struct.node_baton_t** %6, align 8
  %39 = getelementptr inbounds %struct.node_baton_t, %struct.node_baton_t* %38, i32 0, i32 0
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @write_propdel_to_stringbuf(i32* %39, i8* %40)
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %42, i32** %3, align 8
  br label %43

43:                                               ; preds = %34, %24, %17
  %44 = load i32*, i32** %3, align 8
  ret i32* %44
}

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @write_propdel_to_stringbuf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
