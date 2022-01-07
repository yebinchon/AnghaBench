; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_hash.c_add_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_hash.c_add_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_table = type { %struct.hash_bucket**, i32 }
%struct.hash_bucket = type { i8*, i8*, i32, %struct.hash_bucket* }

@.str = private unnamed_addr constant [28 x i8] c"Can't add %s to hash table.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_hash(%struct.hash_table* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.hash_table*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hash_bucket*, align 8
  %10 = alloca i32, align 4
  store %struct.hash_table* %0, %struct.hash_table** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %12 = icmp ne %struct.hash_table* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %59

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %24 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @do_hash(i8* %21, i32 %22, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = call %struct.hash_bucket* (...) @new_hash_bucket()
  store %struct.hash_bucket* %27, %struct.hash_bucket** %9, align 8
  %28 = load %struct.hash_bucket*, %struct.hash_bucket** %9, align 8
  %29 = icmp ne %struct.hash_bucket* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %59

33:                                               ; preds = %20
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.hash_bucket*, %struct.hash_bucket** %9, align 8
  %36 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load %struct.hash_bucket*, %struct.hash_bucket** %9, align 8
  %39 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %41 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %40, i32 0, i32 0
  %42 = load %struct.hash_bucket**, %struct.hash_bucket*** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.hash_bucket*, %struct.hash_bucket** %42, i64 %44
  %46 = load %struct.hash_bucket*, %struct.hash_bucket** %45, align 8
  %47 = load %struct.hash_bucket*, %struct.hash_bucket** %9, align 8
  %48 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %47, i32 0, i32 3
  store %struct.hash_bucket* %46, %struct.hash_bucket** %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.hash_bucket*, %struct.hash_bucket** %9, align 8
  %51 = getelementptr inbounds %struct.hash_bucket, %struct.hash_bucket* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.hash_bucket*, %struct.hash_bucket** %9, align 8
  %53 = load %struct.hash_table*, %struct.hash_table** %5, align 8
  %54 = getelementptr inbounds %struct.hash_table, %struct.hash_table* %53, i32 0, i32 0
  %55 = load %struct.hash_bucket**, %struct.hash_bucket*** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.hash_bucket*, %struct.hash_bucket** %55, i64 %57
  store %struct.hash_bucket* %52, %struct.hash_bucket** %58, align 8
  br label %59

59:                                               ; preds = %33, %30, %13
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @do_hash(i8*, i32, i32) #1

declare dso_local %struct.hash_bucket* @new_hash_bucket(...) #1

declare dso_local i32 @warning(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
