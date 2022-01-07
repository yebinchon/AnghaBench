; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_ndef.c_ndef_parse_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_ndef.c_ndef_parse_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndef_record = type { i32, i32*, i32*, i32*, i32, i32, i32 }

@FLAG_SHORT_RECORD = common dso_local global i32 0, align 4
@FLAG_ID_LENGTH_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.ndef_record*)* @ndef_parse_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndef_parse_record(i32* %0, i32 %1, %struct.ndef_record* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ndef_record*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ndef_record* %2, %struct.ndef_record** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32* %11, i32** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %162

15:                                               ; preds = %3
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %8, align 8
  %18 = load i32, i32* %16, align 4
  %19 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %20 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FLAG_SHORT_RECORD, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %162

31:                                               ; preds = %27
  %32 = load i32*, i32** %8, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %8, align 8
  %34 = load i32, i32* %32, align 4
  %35 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %36 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %58

37:                                               ; preds = %15
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 6
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %162

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @WPA_GET_BE32(i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, 6
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = icmp sgt i32 %49, 20000
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %41
  store i32 -1, i32* %4, align 4
  br label %162

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %55 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32* %57, i32** %8, align 8
  br label %58

58:                                               ; preds = %52, %31
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @FLAG_ID_LENGTH_PRESENT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = load i32*, i32** %8, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  %74 = add nsw i64 %73, 1
  %75 = icmp slt i64 %67, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %162

77:                                               ; preds = %65
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %8, align 8
  %80 = load i32, i32* %78, align 4
  %81 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %82 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  br label %86

83:                                               ; preds = %58
  %84 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %85 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %84, i32 0, i32 5
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %77
  %87 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %88 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %94

92:                                               ; preds = %86
  %93 = load i32*, i32** %8, align 8
  br label %94

94:                                               ; preds = %92, %91
  %95 = phi i32* [ null, %91 ], [ %93, %92 ]
  %96 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %97 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %96, i32 0, i32 1
  store i32* %95, i32** %97, align 8
  %98 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %99 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %8, align 8
  %104 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %105 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %111

109:                                              ; preds = %94
  %110 = load i32*, i32** %8, align 8
  br label %111

111:                                              ; preds = %109, %108
  %112 = phi i32* [ null, %108 ], [ %110, %109 ]
  %113 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %114 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %113, i32 0, i32 2
  store i32* %112, i32** %114, align 8
  %115 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %116 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32* %120, i32** %8, align 8
  %121 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %122 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %111
  br label %128

126:                                              ; preds = %111
  %127 = load i32*, i32** %8, align 8
  br label %128

128:                                              ; preds = %126, %125
  %129 = phi i32* [ null, %125 ], [ %127, %126 ]
  %130 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %131 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %130, i32 0, i32 3
  store i32* %129, i32** %131, align 8
  %132 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %133 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  store i32* %137, i32** %8, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = ptrtoint i32* %138 to i64
  %141 = ptrtoint i32* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %146 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 8
  %147 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %148 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %160, label %152

152:                                              ; preds = %128
  %153 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %154 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ndef_record*, %struct.ndef_record** %7, align 8
  %157 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %152, %128
  store i32 -1, i32* %4, align 4
  br label %162

161:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %161, %160, %76, %51, %40, %30, %14
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @WPA_GET_BE32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
