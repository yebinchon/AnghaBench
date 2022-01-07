; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_chroot_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dnscrypt/extr_dnscrypt.c_dnsc_chroot_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.config_file*, i8*)* @dnsc_chroot_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dnsc_chroot_path(%struct.config_file* %0, i8* %1) #0 {
  %3 = alloca %struct.config_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.config_file* %0, %struct.config_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  store i8* %6, i8** %5, align 8
  %7 = load %struct.config_file*, %struct.config_file** %3, align 8
  %8 = getelementptr inbounds %struct.config_file, %struct.config_file* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = icmp ne i64* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  %12 = load %struct.config_file*, %struct.config_file** %3, align 8
  %13 = getelementptr inbounds %struct.config_file, %struct.config_file* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %11
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.config_file*, %struct.config_file** %3, align 8
  %21 = getelementptr inbounds %struct.config_file, %struct.config_file* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load %struct.config_file*, %struct.config_file** %3, align 8
  %24 = getelementptr inbounds %struct.config_file, %struct.config_file* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = call i32 @strlen(i64* %25)
  %27 = call i64 @strncmp(i8* %19, i64* %22, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %18
  %30 = load %struct.config_file*, %struct.config_file** %3, align 8
  %31 = getelementptr inbounds %struct.config_file, %struct.config_file* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = call i32 @strlen(i64* %32)
  %34 = load i8*, i8** %5, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %5, align 8
  br label %37

37:                                               ; preds = %29, %18, %11, %2
  %38 = load i8*, i8** %5, align 8
  ret i8* %38
}

declare dso_local i64 @strncmp(i8*, i64*, i32) #1

declare dso_local i32 @strlen(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
