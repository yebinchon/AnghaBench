; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_ndbm.c_dbm_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_ndbm.c_dbm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i32*, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@DBM_SUFFIX = common dso_local global i8* null, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dbm_open(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 4096, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i32 40, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = load i8*, i8** @DBM_SUFFIX, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = sub i64 %13, %25
  %27 = icmp uge i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %29, i32* @errno, align 4
  store i32* null, i32** %4, align 8
  store i32 1, i32* %11, align 4
  br label %39

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strcpy(i8* %15, i8* %31)
  %33 = load i8*, i8** @DBM_SUFFIX, align 8
  %34 = call i32 @strcat(i8* %15, i8* %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @__hash_open(i8* %15, i32 %35, i32 %36, %struct.TYPE_3__* %8, i32 0)
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %4, align 8
  store i32 1, i32* %11, align 4
  br label %39

39:                                               ; preds = %30, %28
  %40 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32*, i32** %4, align 8
  ret i32* %41
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @__hash_open(i8*, i32, i32, %struct.TYPE_3__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
