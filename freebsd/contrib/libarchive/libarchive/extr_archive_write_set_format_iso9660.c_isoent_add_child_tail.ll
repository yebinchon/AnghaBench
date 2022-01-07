; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_add_child_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_add_child_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { %struct.isoent*, %struct.TYPE_4__, %struct.isoent*, i64, %struct.TYPE_3__, %struct.isoent*, i32 }
%struct.TYPE_4__ = type { i32, %struct.isoent** }
%struct.TYPE_3__ = type { i32, %struct.isoent** }
%struct.archive_rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isoent*, %struct.isoent*)* @isoent_add_child_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_add_child_tail(%struct.isoent* %0, %struct.isoent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isoent*, align 8
  %5 = alloca %struct.isoent*, align 8
  store %struct.isoent* %0, %struct.isoent** %4, align 8
  store %struct.isoent* %1, %struct.isoent** %5, align 8
  %6 = load %struct.isoent*, %struct.isoent** %4, align 8
  %7 = getelementptr inbounds %struct.isoent, %struct.isoent* %6, i32 0, i32 6
  %8 = load %struct.isoent*, %struct.isoent** %5, align 8
  %9 = bitcast %struct.isoent* %8 to %struct.archive_rb_node*
  %10 = call i32 @__archive_rb_tree_insert_node(i32* %7, %struct.archive_rb_node* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

13:                                               ; preds = %2
  %14 = load %struct.isoent*, %struct.isoent** %5, align 8
  %15 = getelementptr inbounds %struct.isoent, %struct.isoent* %14, i32 0, i32 5
  store %struct.isoent* null, %struct.isoent** %15, align 8
  %16 = load %struct.isoent*, %struct.isoent** %5, align 8
  %17 = load %struct.isoent*, %struct.isoent** %4, align 8
  %18 = getelementptr inbounds %struct.isoent, %struct.isoent* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.isoent**, %struct.isoent*** %19, align 8
  store %struct.isoent* %16, %struct.isoent** %20, align 8
  %21 = load %struct.isoent*, %struct.isoent** %5, align 8
  %22 = getelementptr inbounds %struct.isoent, %struct.isoent* %21, i32 0, i32 5
  %23 = load %struct.isoent*, %struct.isoent** %4, align 8
  %24 = getelementptr inbounds %struct.isoent, %struct.isoent* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store %struct.isoent** %22, %struct.isoent*** %25, align 8
  %26 = load %struct.isoent*, %struct.isoent** %4, align 8
  %27 = getelementptr inbounds %struct.isoent, %struct.isoent* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.isoent*, %struct.isoent** %4, align 8
  %32 = load %struct.isoent*, %struct.isoent** %5, align 8
  %33 = getelementptr inbounds %struct.isoent, %struct.isoent* %32, i32 0, i32 0
  store %struct.isoent* %31, %struct.isoent** %33, align 8
  %34 = load %struct.isoent*, %struct.isoent** %5, align 8
  %35 = getelementptr inbounds %struct.isoent, %struct.isoent* %34, i32 0, i32 2
  store %struct.isoent* null, %struct.isoent** %35, align 8
  %36 = load %struct.isoent*, %struct.isoent** %5, align 8
  %37 = getelementptr inbounds %struct.isoent, %struct.isoent* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %13
  %41 = load %struct.isoent*, %struct.isoent** %5, align 8
  %42 = load %struct.isoent*, %struct.isoent** %4, align 8
  %43 = getelementptr inbounds %struct.isoent, %struct.isoent* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.isoent**, %struct.isoent*** %44, align 8
  store %struct.isoent* %41, %struct.isoent** %45, align 8
  %46 = load %struct.isoent*, %struct.isoent** %5, align 8
  %47 = getelementptr inbounds %struct.isoent, %struct.isoent* %46, i32 0, i32 2
  %48 = load %struct.isoent*, %struct.isoent** %4, align 8
  %49 = getelementptr inbounds %struct.isoent, %struct.isoent* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store %struct.isoent** %47, %struct.isoent*** %50, align 8
  %51 = load %struct.isoent*, %struct.isoent** %4, align 8
  %52 = getelementptr inbounds %struct.isoent, %struct.isoent* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.isoent*, %struct.isoent** %4, align 8
  %57 = load %struct.isoent*, %struct.isoent** %5, align 8
  %58 = getelementptr inbounds %struct.isoent, %struct.isoent* %57, i32 0, i32 0
  store %struct.isoent* %56, %struct.isoent** %58, align 8
  br label %59

59:                                               ; preds = %40, %13
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @__archive_rb_tree_insert_node(i32*, %struct.archive_rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
