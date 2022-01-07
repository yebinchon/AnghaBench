; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_get_next_prog_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_get_next_prog_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.p2p_channels }
%struct.p2p_channels = type { i64, %struct.p2p_reg_class* }
%struct.p2p_reg_class = type { i64, i8**, i8* }

@.str = private unnamed_addr constant [67 x i8] c"Next progressive search channel: reg_class %u channel %u -> %d MHz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p2p_data*)* @p2p_get_next_prog_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p2p_get_next_prog_freq(%struct.p2p_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca %struct.p2p_channels*, align 8
  %5 = alloca %struct.p2p_reg_class*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %13 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.p2p_channels* %15, %struct.p2p_channels** %4, align 8
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %64, %1
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %19 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %16
  %23 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %24 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %23, i32 0, i32 1
  %25 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %25, i64 %26
  store %struct.p2p_reg_class* %27, %struct.p2p_reg_class** %5, align 8
  %28 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %5, align 8
  %29 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %32 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %64

36:                                               ; preds = %22
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %5, align 8
  %40 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %5, align 8
  %45 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %44, i32 0, i32 1
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %51 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = icmp eq i8* %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  br label %59

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %37

59:                                               ; preds = %54, %37
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %67

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %63, %35
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %6, align 8
  br label %16

67:                                               ; preds = %62, %16
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %67
  %71 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %72 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %71, i32 0, i32 1
  %73 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %72, align 8
  %74 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %73, i64 0
  %75 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %9, align 8
  %77 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %78 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %77, i32 0, i32 1
  %79 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %78, align 8
  %80 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %79, i64 0
  %81 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %10, align 8
  br label %121

85:                                               ; preds = %67
  %86 = load i64, i64* %7, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %5, align 8
  %90 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %85
  %94 = load i64, i64* %6, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %98 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i64 0, i64* %6, align 8
  br label %102

102:                                              ; preds = %101, %93
  store i64 0, i64* %7, align 8
  br label %103

103:                                              ; preds = %102, %85
  %104 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %105 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %104, i32 0, i32 1
  %106 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %106, i64 %107
  %109 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %9, align 8
  %111 = load %struct.p2p_channels*, %struct.p2p_channels** %4, align 8
  %112 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %111, i32 0, i32 1
  %113 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %112, align 8
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %113, i64 %114
  %116 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %115, i32 0, i32 1
  %117 = load i8**, i8*** %116, align 8
  %118 = load i64, i64* %7, align 8
  %119 = getelementptr inbounds i8*, i8** %117, i64 %118
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %10, align 8
  br label %121

121:                                              ; preds = %103, %70
  %122 = load i8*, i8** %9, align 8
  %123 = load i8*, i8** %10, align 8
  %124 = call i32 @p2p_channel_to_freq(i8* %122, i8* %123)
  store i32 %124, i32* %11, align 4
  %125 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @p2p_dbg(%struct.p2p_data* %125, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i8* %126, i8* %127, i32 %128)
  %130 = load i8*, i8** %9, align 8
  %131 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %132 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %135 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %134, i32 0, i32 0
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* %11, align 4
  %137 = icmp eq i32 %136, 2412
  br i1 %137, label %144, label %138

138:                                              ; preds = %121
  %139 = load i32, i32* %11, align 4
  %140 = icmp eq i32 %139, 2437
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %11, align 4
  %143 = icmp eq i32 %142, 2462
  br i1 %143, label %144, label %145

144:                                              ; preds = %141, %138, %121
  store i32 0, i32* %2, align 4
  br label %147

145:                                              ; preds = %141
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %144
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @p2p_channel_to_freq(i8*, i8*) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
