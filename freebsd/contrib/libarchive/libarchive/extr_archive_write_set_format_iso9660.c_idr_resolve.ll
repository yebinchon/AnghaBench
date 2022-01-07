; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_idr_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_idr_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.idrent* }
%struct.idrent = type { i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__*, %struct.idrent* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idr*, void (i8*, i32)*)* @idr_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idr_resolve(%struct.idr* %0, void (i8*, i32)* %1) #0 {
  %3 = alloca %struct.idr*, align 8
  %4 = alloca void (i8*, i32)*, align 8
  %5 = alloca %struct.idrent*, align 8
  %6 = alloca i8*, align 8
  store %struct.idr* %0, %struct.idr** %3, align 8
  store void (i8*, i32)* %1, void (i8*, i32)** %4, align 8
  %7 = load %struct.idr*, %struct.idr** %3, align 8
  %8 = getelementptr inbounds %struct.idr, %struct.idr* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.idrent*, %struct.idrent** %9, align 8
  store %struct.idrent* %10, %struct.idrent** %5, align 8
  br label %11

11:                                               ; preds = %52, %2
  %12 = load %struct.idrent*, %struct.idrent** %5, align 8
  %13 = icmp ne %struct.idrent* %12, null
  br i1 %13, label %14, label %56

14:                                               ; preds = %11
  %15 = load %struct.idrent*, %struct.idrent** %5, align 8
  %16 = load %struct.idr*, %struct.idr** %3, align 8
  %17 = getelementptr inbounds %struct.idr, %struct.idr* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.idr*, %struct.idr** %3, align 8
  %20 = getelementptr inbounds %struct.idr, %struct.idr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @idr_extend_identifier(%struct.idrent* %15, i32 %18, i32 %21)
  %23 = load %struct.idrent*, %struct.idrent** %5, align 8
  %24 = getelementptr inbounds %struct.idrent, %struct.idrent* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.idrent*, %struct.idrent** %5, align 8
  %30 = getelementptr inbounds %struct.idrent, %struct.idrent* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %43, %14
  %35 = load void (i8*, i32)*, void (i8*, i32)** %4, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.idrent*, %struct.idrent** %5, align 8
  %38 = getelementptr inbounds %struct.idrent, %struct.idrent* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  call void %35(i8* %36, i32 %41)
  br label %43

43:                                               ; preds = %34
  %44 = load %struct.idr*, %struct.idr** %3, align 8
  %45 = getelementptr inbounds %struct.idr, %struct.idr* %44, i32 0, i32 0
  %46 = load %struct.idrent*, %struct.idrent** %5, align 8
  %47 = getelementptr inbounds %struct.idrent, %struct.idrent* %46, i32 0, i32 2
  %48 = call i32 @__archive_rb_tree_insert_node(i32* %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br i1 %50, label %34, label %51

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.idrent*, %struct.idrent** %5, align 8
  %54 = getelementptr inbounds %struct.idrent, %struct.idrent* %53, i32 0, i32 4
  %55 = load %struct.idrent*, %struct.idrent** %54, align 8
  store %struct.idrent* %55, %struct.idrent** %5, align 8
  br label %11

56:                                               ; preds = %11
  ret void
}

declare dso_local i32 @idr_extend_identifier(%struct.idrent*, i32, i32) #1

declare dso_local i32 @__archive_rb_tree_insert_node(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
