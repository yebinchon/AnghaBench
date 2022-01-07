; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_svn_fs_fs__l2p_proto_index_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_svn_fs_fs__l2p_proto_index_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__l2p_proto_index_add_entry(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, -1
  %12 = zext i1 %11 to i32
  %13 = call i32 @SVN_ERR_ASSERT(i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %14, 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @UINT_MAX, align 4
  %19 = sdiv i32 %18, 2
  %20 = icmp slt i32 %17, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @SVN_ERR_ASSERT(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = bitcast %struct.TYPE_3__* %9 to i64*
  %28 = load i64, i64* %27, align 4
  %29 = call i32 @write_l2p_entry_to_proto_index(i32* %25, i64 %28, i32* %26)
  %30 = call i32* @svn_error_trace(i32 %29)
  ret i32* %30
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @write_l2p_entry_to_proto_index(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
