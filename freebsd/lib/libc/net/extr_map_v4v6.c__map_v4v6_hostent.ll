; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_map_v4v6.c__map_v4v6_hostent.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_map_v4v6.c__map_v4v6_hostent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i64, i64, i8** }

@AF_INET = common dso_local global i64 0, align 8
@INADDRSZ = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@IN6ADDRSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_map_v4v6_hostent(%struct.hostent* %0, i8** %1, i8* %2) #0 {
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store %struct.hostent* %0, %struct.hostent** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.hostent*, %struct.hostent** %4, align 8
  %10 = getelementptr inbounds %struct.hostent, %struct.hostent* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AF_INET, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.hostent*, %struct.hostent** %4, align 8
  %16 = getelementptr inbounds %struct.hostent, %struct.hostent* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @INADDRSZ, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  br label %86

21:                                               ; preds = %14
  %22 = load i64, i64* @AF_INET6, align 8
  %23 = load %struct.hostent*, %struct.hostent** %4, align 8
  %24 = getelementptr inbounds %struct.hostent, %struct.hostent* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* @IN6ADDRSZ, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.hostent*, %struct.hostent** %4, align 8
  %28 = getelementptr inbounds %struct.hostent, %struct.hostent* %27, i32 0, i32 1
  store i64 %26, i64* %28, align 8
  %29 = load %struct.hostent*, %struct.hostent** %4, align 8
  %30 = getelementptr inbounds %struct.hostent, %struct.hostent* %29, i32 0, i32 2
  %31 = load i8**, i8*** %30, align 8
  store i8** %31, i8*** %7, align 8
  br label %32

32:                                               ; preds = %83, %21
  %33 = load i8**, i8*** %7, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %86

36:                                               ; preds = %32
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = ptrtoint i8* %38 to i32
  %40 = sext i32 %39 to i64
  %41 = urem i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 4, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %45, %36
  %51 = load i8*, i8** %6, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %51 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @IN6ADDRSZ, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = icmp slt i64 %56, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %50
  %63 = load i8**, i8*** %7, align 8
  store i8* null, i8** %63, align 8
  br label %86

64:                                               ; preds = %50
  %65 = load i32, i32* %8, align 4
  %66 = load i8**, i8*** %5, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = sext i32 %65 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %66, align 8
  %70 = load i8**, i8*** %7, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @_map_v4v6_address(i8* %71, i8* %73)
  %75 = load i8**, i8*** %5, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i8**, i8*** %7, align 8
  store i8* %76, i8** %77, align 8
  %78 = load i32, i32* @IN6ADDRSZ, align 4
  %79 = load i8**, i8*** %5, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = sext i32 %78 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %79, align 8
  br label %83

83:                                               ; preds = %64
  %84 = load i8**, i8*** %7, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %85, i8*** %7, align 8
  br label %32

86:                                               ; preds = %20, %62, %32
  ret void
}

declare dso_local i32 @_map_v4v6_address(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
