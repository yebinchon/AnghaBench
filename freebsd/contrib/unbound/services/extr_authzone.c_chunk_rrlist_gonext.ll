; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_chunk_rrlist_gonext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_chunk_rrlist_gonext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_chunk = type { i64, %struct.auth_chunk*, i32 }

@LDNS_HEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.auth_chunk**, i32*, i64*, i64)* @chunk_rrlist_gonext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chunk_rrlist_gonext(%struct.auth_chunk** %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.auth_chunk**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.auth_chunk** %0, %struct.auth_chunk*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.auth_chunk**, %struct.auth_chunk*** %5, align 8
  %10 = load %struct.auth_chunk*, %struct.auth_chunk** %9, align 8
  %11 = icmp ne %struct.auth_chunk* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  br label %75

13:                                               ; preds = %4
  %14 = load %struct.auth_chunk**, %struct.auth_chunk*** %5, align 8
  %15 = load %struct.auth_chunk*, %struct.auth_chunk** %14, align 8
  %16 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  %24 = load %struct.auth_chunk**, %struct.auth_chunk*** %5, align 8
  %25 = load %struct.auth_chunk*, %struct.auth_chunk** %24, align 8
  %26 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @LDNS_ANCOUNT(i32 %27)
  %29 = trunc i64 %28 to i32
  %30 = icmp slt i32 %23, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load i64, i64* %8, align 8
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  br label %75

37:                                               ; preds = %20, %13
  %38 = load %struct.auth_chunk**, %struct.auth_chunk*** %5, align 8
  %39 = load %struct.auth_chunk*, %struct.auth_chunk** %38, align 8
  %40 = icmp ne %struct.auth_chunk* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load %struct.auth_chunk**, %struct.auth_chunk*** %5, align 8
  %43 = load %struct.auth_chunk*, %struct.auth_chunk** %42, align 8
  %44 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %43, i32 0, i32 1
  %45 = load %struct.auth_chunk*, %struct.auth_chunk** %44, align 8
  %46 = load %struct.auth_chunk**, %struct.auth_chunk*** %5, align 8
  store %struct.auth_chunk* %45, %struct.auth_chunk** %46, align 8
  br label %47

47:                                               ; preds = %41, %37
  br label %48

48:                                               ; preds = %69, %47
  %49 = load %struct.auth_chunk**, %struct.auth_chunk*** %5, align 8
  %50 = load %struct.auth_chunk*, %struct.auth_chunk** %49, align 8
  %51 = icmp ne %struct.auth_chunk* %50, null
  br i1 %51, label %52, label %75

52:                                               ; preds = %48
  %53 = load i32*, i32** %6, align 8
  store i32 0, i32* %53, align 4
  %54 = load i64*, i64** %7, align 8
  store i64 0, i64* %54, align 8
  %55 = load %struct.auth_chunk**, %struct.auth_chunk*** %5, align 8
  %56 = load %struct.auth_chunk*, %struct.auth_chunk** %55, align 8
  %57 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @LDNS_HEADER_SIZE, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load %struct.auth_chunk**, %struct.auth_chunk*** %5, align 8
  %63 = load %struct.auth_chunk*, %struct.auth_chunk** %62, align 8
  %64 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @LDNS_ANCOUNT(i32 %65)
  %67 = icmp sgt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %75

69:                                               ; preds = %61, %52
  %70 = load %struct.auth_chunk**, %struct.auth_chunk*** %5, align 8
  %71 = load %struct.auth_chunk*, %struct.auth_chunk** %70, align 8
  %72 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %71, i32 0, i32 1
  %73 = load %struct.auth_chunk*, %struct.auth_chunk** %72, align 8
  %74 = load %struct.auth_chunk**, %struct.auth_chunk*** %5, align 8
  store %struct.auth_chunk* %73, %struct.auth_chunk** %74, align 8
  br label %48

75:                                               ; preds = %12, %31, %68, %48
  ret void
}

declare dso_local i64 @LDNS_ANCOUNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
