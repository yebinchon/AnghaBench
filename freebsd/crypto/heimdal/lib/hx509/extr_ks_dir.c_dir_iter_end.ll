; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_dir.c_dir_iter_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_dir.c_dir_iter_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dircursor = type { i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8*)* @dir_iter_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_iter_end(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dircursor*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.dircursor*
  store %struct.dircursor* %11, %struct.dircursor** %9, align 8
  %12 = load %struct.dircursor*, %struct.dircursor** %9, align 8
  %13 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.dircursor*, %struct.dircursor** %9, align 8
  %19 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dircursor*, %struct.dircursor** %9, align 8
  %22 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @hx509_certs_end_seq(i32 %17, i64 %20, i32* %23)
  %25 = load %struct.dircursor*, %struct.dircursor** %9, align 8
  %26 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.dircursor*, %struct.dircursor** %9, align 8
  %28 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %27, i32 0, i32 1
  %29 = call i32 @hx509_certs_free(i64* %28)
  br label %30

30:                                               ; preds = %16, %4
  %31 = load %struct.dircursor*, %struct.dircursor** %9, align 8
  %32 = getelementptr inbounds %struct.dircursor, %struct.dircursor* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @closedir(i32 %33)
  %35 = load %struct.dircursor*, %struct.dircursor** %9, align 8
  %36 = call i32 @free(%struct.dircursor* %35)
  ret i32 0
}

declare dso_local i32 @hx509_certs_end_seq(i32, i64, i32*) #1

declare dso_local i32 @hx509_certs_free(i64*) #1

declare dso_local i32 @closedir(i32) #1

declare dso_local i32 @free(%struct.dircursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
