; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isofile_free_hardlinks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isofile_free_hardlinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso9660 = type { i32 }
%struct.archive_rb_node = type { i32 }

@ARCHIVE_RB_DIR_RIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iso9660*)* @isofile_free_hardlinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isofile_free_hardlinks(%struct.iso9660* %0) #0 {
  %2 = alloca %struct.iso9660*, align 8
  %3 = alloca %struct.archive_rb_node*, align 8
  %4 = alloca %struct.archive_rb_node*, align 8
  store %struct.iso9660* %0, %struct.iso9660** %2, align 8
  %5 = load %struct.iso9660*, %struct.iso9660** %2, align 8
  %6 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %5, i32 0, i32 0
  %7 = call %struct.archive_rb_node* @ARCHIVE_RB_TREE_MIN(i32* %6)
  store %struct.archive_rb_node* %7, %struct.archive_rb_node** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.archive_rb_node*, %struct.archive_rb_node** %3, align 8
  %10 = icmp ne %struct.archive_rb_node* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load %struct.iso9660*, %struct.iso9660** %2, align 8
  %13 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %12, i32 0, i32 0
  %14 = load %struct.archive_rb_node*, %struct.archive_rb_node** %3, align 8
  %15 = load i32, i32* @ARCHIVE_RB_DIR_RIGHT, align 4
  %16 = call %struct.archive_rb_node* @__archive_rb_tree_iterate(i32* %13, %struct.archive_rb_node* %14, i32 %15)
  store %struct.archive_rb_node* %16, %struct.archive_rb_node** %4, align 8
  %17 = load %struct.archive_rb_node*, %struct.archive_rb_node** %3, align 8
  %18 = call i32 @free(%struct.archive_rb_node* %17)
  %19 = load %struct.archive_rb_node*, %struct.archive_rb_node** %4, align 8
  store %struct.archive_rb_node* %19, %struct.archive_rb_node** %3, align 8
  br label %8

20:                                               ; preds = %8
  ret void
}

declare dso_local %struct.archive_rb_node* @ARCHIVE_RB_TREE_MIN(i32*) #1

declare dso_local %struct.archive_rb_node* @__archive_rb_tree_iterate(i32*, %struct.archive_rb_node*, i32) #1

declare dso_local i32 @free(%struct.archive_rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
