; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_read_setup_vecs_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_read_setup_vecs_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { %struct.evbuffer_chain** }
%struct.evbuffer_chain = type { %struct.evbuffer_chain* }
%struct.evbuffer_iovec = type { i64, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evbuffer_read_setup_vecs_(%struct.evbuffer* %0, i64 %1, %struct.evbuffer_iovec* %2, i32 %3, %struct.evbuffer_chain*** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.evbuffer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.evbuffer_iovec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.evbuffer_chain***, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.evbuffer_chain*, align 8
  %15 = alloca %struct.evbuffer_chain**, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.evbuffer_iovec* %2, %struct.evbuffer_iovec** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.evbuffer_chain*** %4, %struct.evbuffer_chain**** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %20 = call i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer* %19)
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %92

24:                                               ; preds = %6
  store i64 0, i64* %16, align 8
  %25 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %26 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %25, i32 0, i32 0
  %27 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %26, align 8
  store %struct.evbuffer_chain** %27, %struct.evbuffer_chain*** %15, align 8
  %28 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %15, align 8
  %29 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %28, align 8
  %30 = call i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %15, align 8
  %34 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %33, align 8
  %35 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %34, i32 0, i32 0
  store %struct.evbuffer_chain** %35, %struct.evbuffer_chain*** %15, align 8
  br label %36

36:                                               ; preds = %32, %24
  %37 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %15, align 8
  %38 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %37, align 8
  store %struct.evbuffer_chain* %38, %struct.evbuffer_chain** %14, align 8
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %85, %36
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ult i64 %44, %45
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %88

49:                                               ; preds = %47
  %50 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %14, align 8
  %51 = call i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain* %50)
  store i64 %51, i64* %18, align 8
  %52 = load i64, i64* %18, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %16, align 8
  %55 = sub i64 %53, %54
  %56 = icmp ugt i64 %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %16, align 8
  %63 = sub i64 %61, %62
  store i64 %63, i64* %18, align 8
  br label %64

64:                                               ; preds = %60, %57, %49
  %65 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %14, align 8
  %66 = call i64 @CHAIN_SPACE_PTR(%struct.evbuffer_chain* %65)
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %10, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %68, i64 %70
  %72 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %71, i32 0, i32 1
  store i8* %67, i8** %72, align 8
  %73 = load i64, i64* %18, align 8
  %74 = load %struct.evbuffer_iovec*, %struct.evbuffer_iovec** %10, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %74, i64 %76
  %78 = getelementptr inbounds %struct.evbuffer_iovec, %struct.evbuffer_iovec* %77, i32 0, i32 0
  store i64 %73, i64* %78, align 8
  %79 = load i64, i64* %18, align 8
  %80 = load i64, i64* %16, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %16, align 8
  %82 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %14, align 8
  %83 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %82, i32 0, i32 0
  %84 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %83, align 8
  store %struct.evbuffer_chain* %84, %struct.evbuffer_chain** %14, align 8
  br label %85

85:                                               ; preds = %64
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %17, align 4
  br label %39

88:                                               ; preds = %47
  %89 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %15, align 8
  %90 = load %struct.evbuffer_chain***, %struct.evbuffer_chain**** %12, align 8
  store %struct.evbuffer_chain** %89, %struct.evbuffer_chain*** %90, align 8
  %91 = load i32, i32* %17, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %88, %23
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer*) #1

declare dso_local i64 @CHAIN_SPACE_LEN(%struct.evbuffer_chain*) #1

declare dso_local i64 @CHAIN_SPACE_PTR(%struct.evbuffer_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
