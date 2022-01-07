; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_check_chroot_filelist_wild.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_check_chroot_filelist_wild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_strlist = type { i8*, %struct.config_strlist* }
%struct.config_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.config_strlist*, i8*, %struct.config_file*)* @check_chroot_filelist_wild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_chroot_filelist_wild(i8* %0, %struct.config_strlist* %1, i8* %2, %struct.config_file* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_strlist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.config_file*, align 8
  %9 = alloca %struct.config_strlist*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.config_strlist* %1, %struct.config_strlist** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.config_file* %3, %struct.config_file** %8, align 8
  %10 = load %struct.config_strlist*, %struct.config_strlist** %6, align 8
  store %struct.config_strlist* %10, %struct.config_strlist** %9, align 8
  br label %11

11:                                               ; preds = %21, %4
  %12 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %13 = icmp ne %struct.config_strlist* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %17 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %16, i32 0, i32 0
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.config_file*, %struct.config_file** %8, align 8
  %20 = call i32 @check_chroot_string(i8* %15, i8** %17, i8* %18, %struct.config_file* %19)
  br label %21

21:                                               ; preds = %14
  %22 = load %struct.config_strlist*, %struct.config_strlist** %9, align 8
  %23 = getelementptr inbounds %struct.config_strlist, %struct.config_strlist* %22, i32 0, i32 1
  %24 = load %struct.config_strlist*, %struct.config_strlist** %23, align 8
  store %struct.config_strlist* %24, %struct.config_strlist** %9, align 8
  br label %11

25:                                               ; preds = %11
  ret void
}

declare dso_local i32 @check_chroot_string(i8*, i8**, i8*, %struct.config_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
