; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_bitstring.c_isc_bitstring_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_bitstring.c_isc_bitstring_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_bitstring_copy(%struct.TYPE_8__* %0, i32 %1, %struct.TYPE_8__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %13 = call i32 @VALID_BITSTRING(%struct.TYPE_8__* %12)
  %14 = call i32 @REQUIRE(i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %16 = call i32 @VALID_BITSTRING(%struct.TYPE_8__* %15)
  %17 = call i32 @REQUIRE(i32 %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @REQUIRE(i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %5
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp ule i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @REQUIRE(i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PADDED(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = sub i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp uge i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @REQUIRE(i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %63

53:                                               ; preds = %5
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %54, %55
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ule i32 %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @REQUIRE(i32 %61)
  br label %63

63:                                               ; preds = %53, %31
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %64, %65
  store i32 %66, i32* %11, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %63
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ule i32 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @REQUIRE(i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @PADDED(i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = sub i32 %82, %83
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp uge i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @REQUIRE(i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = sub i32 %91, %90
  store i32 %92, i32* %9, align 4
  br label %101

93:                                               ; preds = %63
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp ule i32 %94, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @REQUIRE(i32 %99)
  br label %101

101:                                              ; preds = %93, %71
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp ugt i32 %102, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %101
  br label %112

112:                                              ; preds = %128, %111
  %113 = load i32, i32* %10, align 4
  %114 = icmp ugt i32 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %112
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i64 @BITSET(%struct.TYPE_8__* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @SETBIT(%struct.TYPE_8__* %121, i32 %122)
  br label %128

124:                                              ; preds = %115
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @CLEARBIT(%struct.TYPE_8__* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i32, i32* %7, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %9, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add i32 %133, -1
  store i32 %134, i32* %10, align 4
  br label %112

135:                                              ; preds = %112
  ret void
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_BITSTRING(%struct.TYPE_8__*) #1

declare dso_local i32 @PADDED(i32) #1

declare dso_local i64 @BITSET(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SETBIT(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @CLEARBIT(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
