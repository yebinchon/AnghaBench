; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_hash.c_hash_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_hash.c_hash_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { %struct.hash_bucket**, i32 }
%struct.hash_bucket = type { i32, i8*, i32, %struct.hash_bucket* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hash_lookup(%struct.hash_table* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hash_table*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hash_bucket*, align 8
  %9 = alloca i32, align 4
  store %struct.hash_table* %0, %struct.hash_table** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %11 = icmp ne %struct.hash_table* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %60

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %23 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @do_hash(i8* %20, i32 %21, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %27 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %26, i32 0, i32 0
  %28 = load %struct.hash_bucket**, %struct.hash_bucket*** %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hash_bucket*, %struct.hash_bucket** %28, i64 %30
  %32 = load %struct.hash_bucket*, %struct.hash_bucket** %31, align 8
  store %struct.hash_bucket* %32, %struct.hash_bucket** %8, align 8
  br label %33

33:                                               ; preds = %55, %19
  %34 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %35 = icmp ne %struct.hash_bucket* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %39 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %44 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @memcmp(i32 %45, i8* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %52 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %4, align 8
  br label %60

54:                                               ; preds = %42, %36
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.hash_bucket*, %struct.hash_bucket** %8, align 8
  %57 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %56, i32 0, i32 3
  %58 = load %struct.hash_bucket*, %struct.hash_bucket** %57, align 8
  store %struct.hash_bucket* %58, %struct.hash_bucket** %8, align 8
  br label %33

59:                                               ; preds = %33
  store i8* null, i8** %4, align 8
  br label %60

60:                                               ; preds = %59, %50, %12
  %61 = load i8*, i8** %4, align 8
  ret i8* %61
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @do_hash(i8*, i32, i32) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
