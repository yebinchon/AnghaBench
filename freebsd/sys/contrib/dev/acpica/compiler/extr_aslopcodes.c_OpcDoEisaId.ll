; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopcodes.c_OpcDoEisaId.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslopcodes.c_OpcDoEisaId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }

@AE_OK = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_INVALID_EISAID = common dso_local global i32 0, align 4
@OP_COMPILE_TIME_CONST = common dso_local global i32 0, align 4
@PARSEOP_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @OpcDoEisaId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OpcDoEisaId(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load i32, i32* @AE_OK, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = icmp ne i32 %16, 7
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %19, i32* %6, align 4
  br label %56

20:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 7
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 @isupper(i32 %33) #3
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %27
  br label %51

39:                                               ; preds = %24
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = call i32 @isxdigit(i32 %45) #3
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %39
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %21

55:                                               ; preds = %21
  br label %56

56:                                               ; preds = %55, %18
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @ACPI_FAILURE(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %56
  %61 = load i32, i32* @ASL_ERROR, align 4
  %62 = load i32, i32* @ASL_MSG_INVALID_EISAID, align 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @AslError(i32 %61, i32 %62, %struct.TYPE_10__* %63, i64 %68)
  br label %122

70:                                               ; preds = %56
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = sub nsw i32 %74, 64
  %76 = sext i32 %75 to i64
  %77 = trunc i64 %76 to i32
  %78 = shl i32 %77, 26
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = sub nsw i32 %82, 64
  %84 = sext i32 %83 to i64
  %85 = trunc i64 %84 to i32
  %86 = shl i32 %85, 21
  %87 = or i32 %78, %86
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 2
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = sub nsw i32 %91, 64
  %93 = sext i32 %92 to i64
  %94 = trunc i64 %93 to i32
  %95 = shl i32 %94, 16
  %96 = or i32 %87, %95
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 3
  %99 = load i8, i8* %98, align 1
  %100 = call i32 @AcpiUtAsciiCharToHex(i8 signext %99)
  %101 = shl i32 %100, 12
  %102 = or i32 %96, %101
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 4
  %105 = load i8, i8* %104, align 1
  %106 = call i32 @AcpiUtAsciiCharToHex(i8 signext %105)
  %107 = shl i32 %106, 8
  %108 = or i32 %102, %107
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 5
  %111 = load i8, i8* %110, align 1
  %112 = call i32 @AcpiUtAsciiCharToHex(i8 signext %111)
  %113 = shl i32 %112, 4
  %114 = or i32 %108, %113
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 6
  %117 = load i8, i8* %116, align 1
  %118 = call i32 @AcpiUtAsciiCharToHex(i8 signext %117)
  %119 = or i32 %114, %118
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @AcpiUtDwordByteSwap(i32 %120)
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %70, %60
  %123 = load i32, i32* %3, align 4
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store i32 %123, i32* %127, align 8
  %128 = load i32, i32* @OP_COMPILE_TIME_CONST, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, %129
  store i32 %134, i32* %132, align 4
  %135 = load i32, i32* @PARSEOP_INTEGER, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %140 = call i32 @OpcSetOptimalIntegerSize(%struct.TYPE_10__* %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %142 = call i32 @UtSetParseOpName(%struct.TYPE_10__* %141)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isupper(i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @isxdigit(i32) #2

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @AcpiUtAsciiCharToHex(i8 signext) #1

declare dso_local i32 @AcpiUtDwordByteSwap(i32) #1

declare dso_local i32 @OpcSetOptimalIntegerSize(%struct.TYPE_10__*) #1

declare dso_local i32 @UtSetParseOpName(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
