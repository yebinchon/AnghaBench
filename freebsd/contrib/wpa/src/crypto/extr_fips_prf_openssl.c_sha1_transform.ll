; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_fips_prf_openssl.c_sha1_transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_fips_prf_openssl.c_sha1_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8*, i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32*)* @sha1_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha1_transform(i8** %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  store i8** %0, i8*** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = call i32 @os_memset(%struct.TYPE_4__* %5, i32 0, i32 48)
  %7 = load i8**, i8*** %3, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  store i8* %9, i8** %10, align 8
  %11 = load i8**, i8*** %3, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i8* %13, i8** %14, align 8
  %15 = load i8**, i8*** %3, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 2
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load i8**, i8*** %3, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 3
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i8* %21, i8** %22, align 8
  %23 = load i8**, i8*** %3, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 4
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @SHA1_Transform(%struct.TYPE_4__* %5, i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = load i8**, i8*** %3, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  store i8* %30, i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %34 = load i8*, i8** %33, align 8
  %35 = load i8**, i8*** %3, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = load i8**, i8*** %3, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  store i8* %38, i8** %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i8**, i8*** %3, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 3
  store i8* %42, i8** %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = load i8**, i8*** %3, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 4
  store i8* %46, i8** %48, align 8
  ret void
}

declare dso_local i32 @os_memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @SHA1_Transform(%struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
