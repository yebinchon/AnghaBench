; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_cmp_key_iso9660.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_cmp_key_iso9660.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_rb_node = type { i32 }
%struct.isoent = type { i32 }
%struct.idrent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_rb_node*, i8*)* @isoent_cmp_key_iso9660 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_cmp_key_iso9660(%struct.archive_rb_node* %0, i8* %1) #0 {
  %3 = alloca %struct.archive_rb_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.isoent*, align 8
  %6 = alloca %struct.idrent*, align 8
  store %struct.archive_rb_node* %0, %struct.archive_rb_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.isoent*
  store %struct.isoent* %8, %struct.isoent** %5, align 8
  %9 = load %struct.archive_rb_node*, %struct.archive_rb_node** %3, align 8
  %10 = bitcast %struct.archive_rb_node* %9 to %struct.idrent*
  store %struct.idrent* %10, %struct.idrent** %6, align 8
  %11 = load %struct.isoent*, %struct.isoent** %5, align 8
  %12 = load %struct.idrent*, %struct.idrent** %6, align 8
  %13 = getelementptr inbounds %struct.idrent, %struct.idrent* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @isoent_cmp_iso9660_identifier(%struct.isoent* %11, i32 %14)
  ret i32 %15
}

declare dso_local i32 @isoent_cmp_iso9660_identifier(%struct.isoent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
