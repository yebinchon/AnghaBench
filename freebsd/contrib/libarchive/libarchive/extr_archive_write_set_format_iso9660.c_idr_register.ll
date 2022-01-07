; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_idr_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_idr_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { %struct.TYPE_2__, i32, i32, %struct.idrent* }
%struct.TYPE_2__ = type { %struct.idrent** }
%struct.idrent = type { i32, i32, %struct.idrent*, %struct.idrent*, %struct.isoent*, i32, i64 }
%struct.isoent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idr*, %struct.isoent*, i32, i32)* @idr_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idr_register(%struct.idr* %0, %struct.isoent* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.idr*, align 8
  %6 = alloca %struct.isoent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.idrent*, align 8
  %10 = alloca %struct.idrent*, align 8
  store %struct.idr* %0, %struct.idr** %5, align 8
  store %struct.isoent* %1, %struct.isoent** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.idr*, %struct.idr** %5, align 8
  %12 = getelementptr inbounds %struct.idr, %struct.idr* %11, i32 0, i32 3
  %13 = load %struct.idrent*, %struct.idrent** %12, align 8
  %14 = load %struct.idr*, %struct.idr** %5, align 8
  %15 = getelementptr inbounds %struct.idr, %struct.idr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds %struct.idrent, %struct.idrent* %13, i64 %18
  store %struct.idrent* %19, %struct.idrent** %9, align 8
  %20 = load %struct.idrent*, %struct.idrent** %9, align 8
  %21 = getelementptr inbounds %struct.idrent, %struct.idrent* %20, i32 0, i32 3
  store %struct.idrent* null, %struct.idrent** %21, align 8
  %22 = load %struct.idrent*, %struct.idrent** %9, align 8
  %23 = getelementptr inbounds %struct.idrent, %struct.idrent* %22, i32 0, i32 2
  store %struct.idrent* null, %struct.idrent** %23, align 8
  %24 = load %struct.isoent*, %struct.isoent** %6, align 8
  %25 = load %struct.idrent*, %struct.idrent** %9, align 8
  %26 = getelementptr inbounds %struct.idrent, %struct.idrent* %25, i32 0, i32 4
  store %struct.isoent* %24, %struct.isoent** %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.idrent*, %struct.idrent** %9, align 8
  %29 = getelementptr inbounds %struct.idrent, %struct.idrent* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.idrent*, %struct.idrent** %9, align 8
  %32 = getelementptr inbounds %struct.idrent, %struct.idrent* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.idrent*, %struct.idrent** %9, align 8
  %34 = getelementptr inbounds %struct.idrent, %struct.idrent* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.idr*, %struct.idr** %5, align 8
  %36 = getelementptr inbounds %struct.idr, %struct.idr* %35, i32 0, i32 1
  %37 = load %struct.idrent*, %struct.idrent** %9, align 8
  %38 = getelementptr inbounds %struct.idrent, %struct.idrent* %37, i32 0, i32 5
  %39 = call i32 @__archive_rb_tree_insert_node(i32* %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %4
  %42 = load %struct.idr*, %struct.idr** %5, align 8
  %43 = getelementptr inbounds %struct.idr, %struct.idr* %42, i32 0, i32 1
  %44 = load %struct.idrent*, %struct.idrent** %9, align 8
  %45 = getelementptr inbounds %struct.idrent, %struct.idrent* %44, i32 0, i32 4
  %46 = load %struct.isoent*, %struct.isoent** %45, align 8
  %47 = call i64 @__archive_rb_tree_find_node(i32* %43, %struct.isoent* %46)
  %48 = inttoptr i64 %47 to %struct.idrent*
  store %struct.idrent* %48, %struct.idrent** %10, align 8
  %49 = load %struct.idrent*, %struct.idrent** %10, align 8
  %50 = icmp ne %struct.idrent* %49, null
  br i1 %50, label %51, label %65

51:                                               ; preds = %41
  %52 = load %struct.idrent*, %struct.idrent** %10, align 8
  %53 = load %struct.idrent*, %struct.idrent** %9, align 8
  %54 = getelementptr inbounds %struct.idrent, %struct.idrent* %53, i32 0, i32 3
  store %struct.idrent* %52, %struct.idrent** %54, align 8
  %55 = load %struct.idrent*, %struct.idrent** %9, align 8
  %56 = load %struct.idr*, %struct.idr** %5, align 8
  %57 = getelementptr inbounds %struct.idr, %struct.idr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.idrent**, %struct.idrent*** %58, align 8
  store %struct.idrent* %55, %struct.idrent** %59, align 8
  %60 = load %struct.idrent*, %struct.idrent** %9, align 8
  %61 = getelementptr inbounds %struct.idrent, %struct.idrent* %60, i32 0, i32 2
  %62 = load %struct.idr*, %struct.idr** %5, align 8
  %63 = getelementptr inbounds %struct.idr, %struct.idr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store %struct.idrent** %61, %struct.idrent*** %64, align 8
  br label %65

65:                                               ; preds = %51, %41
  br label %66

66:                                               ; preds = %65, %4
  ret void
}

declare dso_local i32 @__archive_rb_tree_insert_node(i32*, i32*) #1

declare dso_local i64 @__archive_rb_tree_find_node(i32*, %struct.isoent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
