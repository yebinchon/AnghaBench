; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cms.c_hx509_cms_unwrap_ContentInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cms.c_hx509_cms_unwrap_ContentInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_cms_unwrap_ContentInfo(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, %struct.TYPE_13__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %14 = call i32 @memset(%struct.TYPE_13__* %13, i32 0, i32 8)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = call i32 @memset(%struct.TYPE_13__* %15, i32 0, i32 8)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @decode_ContentInfo(i32 %19, i32 %22, %struct.TYPE_14__* %10, i64* %11)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %5, align 4
  br label %69

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = call i32 @der_copy_oid(i32* %29, %struct.TYPE_13__* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = call i32 @free_ContentInfo(%struct.TYPE_14__* %10)
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %69

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = call i32 @der_copy_octet_string(i32* %43, %struct.TYPE_13__* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %50 = call i32 @der_free_oid(%struct.TYPE_13__* %49)
  %51 = call i32 @free_ContentInfo(%struct.TYPE_14__* %10)
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %5, align 4
  br label %69

53:                                               ; preds = %41
  br label %57

54:                                               ; preds = %37
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = call i32 @memset(%struct.TYPE_13__* %55, i32 0, i32 8)
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load i32*, i32** %9, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %57
  %68 = call i32 @free_ContentInfo(%struct.TYPE_14__* %10)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %48, %34, %26
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @decode_ContentInfo(i32, i32, %struct.TYPE_14__*, i64*) #1

declare dso_local i32 @der_copy_oid(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @free_ContentInfo(%struct.TYPE_14__*) #1

declare dso_local i32 @der_copy_octet_string(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @der_free_oid(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
