; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_add_party_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_unimsgcpy.c_copy_msg_add_party_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_add_party_ack = type { i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }

@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_msg_add_party_ack(%struct.uni_add_party_ack* %0, %struct.uni_add_party_ack* %1) #0 {
  %3 = alloca %struct.uni_add_party_ack*, align 8
  %4 = alloca %struct.uni_add_party_ack*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.uni_add_party_ack* %0, %struct.uni_add_party_ack** %3, align 8
  store %struct.uni_add_party_ack* %1, %struct.uni_add_party_ack** %4, align 8
  %7 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %8 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %7, i32 0, i32 10
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @IE_ISGOOD(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %14 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %4, align 8
  %17 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 4
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %20 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @IE_ISGOOD(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %26 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %4, align 8
  %29 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %28, i32 0, i32 9
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %32 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IE_ISGOOD(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %38 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %4, align 8
  %41 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %40, i32 0, i32 8
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %44 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IE_ISGOOD(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %50 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %4, align 8
  %53 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %48, %42
  %55 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %56 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @IE_ISGOOD(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %62 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %4, align 8
  %65 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %60, %54
  %67 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %68 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @IE_ISGOOD(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %74 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %4, align 8
  %77 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %72, %66
  %79 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %80 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @IE_ISGOOD(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %86 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %4, align 8
  %89 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %78
  %91 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %92 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i64 @IE_ISGOOD(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %98 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %4, align 8
  %101 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %96, %90
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  br label %103

103:                                              ; preds = %130, %102
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %103
  %108 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %109 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %5, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @IE_ISGOOD(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %107
  %117 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %118 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %5, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %4, align 8
  %124 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %6, align 8
  %128 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32 %122, i32* %128, align 4
  br label %129

129:                                              ; preds = %116, %107
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %5, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %5, align 8
  br label %103

133:                                              ; preds = %103
  %134 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %135 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @IE_ISGOOD(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %141 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %4, align 8
  %144 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %139, %133
  %146 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %147 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @IE_ISGOOD(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %145
  %152 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %3, align 8
  %153 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %4, align 8
  %156 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %151, %145
  ret void
}

declare dso_local i64 @IE_ISGOOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
