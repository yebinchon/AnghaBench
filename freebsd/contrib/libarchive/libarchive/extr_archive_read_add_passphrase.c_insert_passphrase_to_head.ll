; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_add_passphrase.c_insert_passphrase_to_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_add_passphrase.c_insert_passphrase_to_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.archive_read_passphrase* }
%struct.archive_read_passphrase = type { %struct.archive_read_passphrase* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_read*, %struct.archive_read_passphrase*)* @insert_passphrase_to_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_passphrase_to_head(%struct.archive_read* %0, %struct.archive_read_passphrase* %1) #0 {
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.archive_read_passphrase*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  store %struct.archive_read_passphrase* %1, %struct.archive_read_passphrase** %4, align 8
  %5 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %6 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %7, align 8
  %9 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %4, align 8
  %10 = getelementptr inbounds %struct.archive_read_passphrase, %struct.archive_read_passphrase* %9, i32 0, i32 0
  store %struct.archive_read_passphrase* %8, %struct.archive_read_passphrase** %10, align 8
  %11 = load %struct.archive_read_passphrase*, %struct.archive_read_passphrase** %4, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.archive_read_passphrase* %11, %struct.archive_read_passphrase** %14, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
