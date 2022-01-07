; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_bluetooth.c_bt_aton.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbluetooth/extr_bluetooth.c_bt_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bt_aton(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i8* null, i8** %8, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = call i32 @memset(%struct.TYPE_4__* %9, i32 0, i32 8)
  store i32 5, i32* %6, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 58)
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %53, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br label %24

24:                                               ; preds = %21, %16, %13
  %25 = phi i1 [ false, %16 ], [ false, %13 ], [ %23, %21 ]
  br i1 %25, label %26, label %60

26:                                               ; preds = %24
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  switch i64 %31, label %40 [
    i64 1, label %32
    i64 2, label %37
  ]

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @bt_hex_nibble(i8 signext %35)
  store i32 %36, i32* %7, align 4
  br label %41

37:                                               ; preds = %26
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @bt_hex_byte(i8* %38)
  store i32 %39, i32* %7, align 4
  br label %41

40:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %37, %32
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %96

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8* %57, i8** %4, align 8
  %58 = load i8*, i8** %4, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 58)
  store i8* %59, i8** %8, align 8
  br label %13

60:                                               ; preds = %24
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %4, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %63, %60
  store i32 0, i32* %3, align 4
  br label %96

72:                                               ; preds = %66
  %73 = load i8*, i8** %4, align 8
  %74 = call i32 @strlen(i8* %73)
  switch i32 %74, label %83 [
    i32 1, label %75
    i32 2, label %80
  ]

75:                                               ; preds = %72
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @bt_hex_nibble(i8 signext %78)
  store i32 %79, i32* %7, align 4
  br label %84

80:                                               ; preds = %72
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @bt_hex_byte(i8* %81)
  store i32 %82, i32* %7, align 4
  br label %84

83:                                               ; preds = %72
  store i32 -1, i32* %7, align 4
  br label %84

84:                                               ; preds = %83, %80, %75
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %96

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %88, %87, %71, %44
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @bt_hex_nibble(i8 signext) #1

declare dso_local i32 @bt_hex_byte(i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
