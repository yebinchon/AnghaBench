; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb.c_find_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb.c_find_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdb_method = type { i8* }

@methods = common dso_local global %struct.hdb_method* null, align 8
@dbmetod = common dso_local global %struct.hdb_method zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hdb_method* (i8*, i8**)* @find_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hdb_method* @find_method(i8* %0, i8** %1) #0 {
  %3 = alloca %struct.hdb_method*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.hdb_method*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load %struct.hdb_method*, %struct.hdb_method** @methods, align 8
  store %struct.hdb_method* %7, %struct.hdb_method** %6, align 8
  br label %8

8:                                                ; preds = %35, %2
  %9 = load %struct.hdb_method*, %struct.hdb_method** %6, align 8
  %10 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.hdb_method*, %struct.hdb_method** %6, align 8
  %16 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.hdb_method*, %struct.hdb_method** %6, align 8
  %19 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = call i64 @strncmp(i8* %14, i8* %17, i32 %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %13
  %25 = load i8*, i8** %4, align 8
  %26 = load %struct.hdb_method*, %struct.hdb_method** %6, align 8
  %27 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %25, i64 %30
  %32 = load i8**, i8*** %5, align 8
  store i8* %31, i8** %32, align 8
  %33 = load %struct.hdb_method*, %struct.hdb_method** %6, align 8
  store %struct.hdb_method* %33, %struct.hdb_method** %3, align 8
  br label %39

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.hdb_method*, %struct.hdb_method** %6, align 8
  %37 = getelementptr inbounds %struct.hdb_method, %struct.hdb_method* %36, i32 1
  store %struct.hdb_method* %37, %struct.hdb_method** %6, align 8
  br label %8

38:                                               ; preds = %8
  store %struct.hdb_method* null, %struct.hdb_method** %3, align 8
  br label %39

39:                                               ; preds = %38, %24
  %40 = load %struct.hdb_method*, %struct.hdb_method** %3, align 8
  ret %struct.hdb_method* %40
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
