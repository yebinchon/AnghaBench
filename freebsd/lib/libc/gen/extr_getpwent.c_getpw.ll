; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getpwent.c_getpw.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getpwent.c_getpw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }
%union.key = type { i32 }

@pwd_storage = common dso_local global i8* null, align 8
@PWD_STORAGE_INITIAL = common dso_local global i32 0, align 4
@pwd_storage_size = common dso_local global i32 0, align 4
@pwd = common dso_local global %struct.passwd zeroinitializer, align 4
@ERANGE = common dso_local global i32 0, align 4
@PWD_STORAGE_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.passwd* (i32 (i32, %struct.passwd*, i8*, i64, %struct.passwd**)*, i32)* @getpw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.passwd* @getpw(i32 (i32, %struct.passwd*, i8*, i64, %struct.passwd**)* %0, i32 %1) #0 {
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca %union.key, align 4
  %5 = alloca i32 (i32, %struct.passwd*, i8*, i64, %struct.passwd**)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.passwd*, align 8
  %8 = getelementptr inbounds %union.key, %union.key* %4, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store i32 (i32, %struct.passwd*, i8*, i64, %struct.passwd**)* %0, i32 (i32, %struct.passwd*, i8*, i64, %struct.passwd**)** %5, align 8
  %9 = load i8*, i8** @pwd_storage, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* @PWD_STORAGE_INITIAL, align 4
  %13 = call i8* @malloc(i32 %12)
  store i8* %13, i8** @pwd_storage, align 8
  %14 = load i8*, i8** @pwd_storage, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store %struct.passwd* null, %struct.passwd** %3, align 8
  br label %69

17:                                               ; preds = %11
  %18 = load i32, i32* @PWD_STORAGE_INITIAL, align 4
  store i32 %18, i32* @pwd_storage_size, align 4
  br label %19

19:                                               ; preds = %17, %2
  br label %20

20:                                               ; preds = %60, %19
  %21 = load i32 (i32, %struct.passwd*, i8*, i64, %struct.passwd**)*, i32 (i32, %struct.passwd*, i8*, i64, %struct.passwd**)** %5, align 8
  %22 = load i8*, i8** @pwd_storage, align 8
  %23 = load i32, i32* @pwd_storage_size, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %union.key, %union.key* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 %21(i32 %26, %struct.passwd* @pwd, i8* %22, i64 %24, %struct.passwd** %7)
  store i32 %27, i32* %6, align 4
  %28 = load %struct.passwd*, %struct.passwd** %7, align 8
  %29 = icmp eq %struct.passwd* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ERANGE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load i8*, i8** @pwd_storage, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32, i32* @pwd_storage_size, align 4
  %38 = shl i32 %37, 1
  %39 = load i32, i32* @PWD_STORAGE_MAX, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  store i8* null, i8** @pwd_storage, align 8
  %42 = load i32, i32* @ERANGE, align 4
  store i32 %42, i32* @errno, align 4
  store %struct.passwd* null, %struct.passwd** %3, align 8
  br label %69

43:                                               ; preds = %34
  %44 = load i32, i32* @pwd_storage_size, align 4
  %45 = shl i32 %44, 1
  store i32 %45, i32* @pwd_storage_size, align 4
  %46 = load i32, i32* @pwd_storage_size, align 4
  %47 = call i8* @malloc(i32 %46)
  store i8* %47, i8** @pwd_storage, align 8
  %48 = load i8*, i8** @pwd_storage, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store %struct.passwd* null, %struct.passwd** %3, align 8
  br label %69

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51, %30, %20
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.passwd*, %struct.passwd** %7, align 8
  %55 = icmp eq %struct.passwd* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ERANGE, align 4
  %59 = icmp eq i32 %57, %58
  br label %60

60:                                               ; preds = %56, %53
  %61 = phi i1 [ false, %53 ], [ %59, %56 ]
  br i1 %61, label %20, label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* @errno, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = load %struct.passwd*, %struct.passwd** %7, align 8
  store %struct.passwd* %68, %struct.passwd** %3, align 8
  br label %69

69:                                               ; preds = %67, %50, %41, %16
  %70 = load %struct.passwd*, %struct.passwd** %3, align 8
  ret %struct.passwd* %70
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
