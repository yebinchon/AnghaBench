; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_compile_time_root_prime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_hints.c_compile_time_root_prime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"A.ROOT-SERVERS.NET.\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"198.41.0.4\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"B.ROOT-SERVERS.NET.\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"199.9.14.201\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"C.ROOT-SERVERS.NET.\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"192.33.4.12\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"D.ROOT-SERVERS.NET.\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"199.7.91.13\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"E.ROOT-SERVERS.NET.\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"192.203.230.10\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"F.ROOT-SERVERS.NET.\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"192.5.5.241\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"G.ROOT-SERVERS.NET.\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"192.112.36.4\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"H.ROOT-SERVERS.NET.\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"198.97.190.53\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"I.ROOT-SERVERS.NET.\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"192.36.148.17\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"J.ROOT-SERVERS.NET.\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"192.58.128.30\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"K.ROOT-SERVERS.NET.\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"193.0.14.129\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"L.ROOT-SERVERS.NET.\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"199.7.83.42\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"M.ROOT-SERVERS.NET.\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"202.12.27.33\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"2001:503:ba3e::2:30\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"2001:500:200::b\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"2001:500:2::c\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"2001:500:2d::d\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"2001:500:a8::e\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"2001:500:2f::f\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"2001:500:12::d0d\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"2001:500:1::53\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"2001:7fe::53\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"2001:503:c27::2:30\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"2001:7fd::1\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"2001:500:9f::42\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"2001:dc3::35\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.delegpt* (i32, i32)* @compile_time_root_prime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.delegpt* @compile_time_root_prime(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.delegpt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.delegpt*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call %struct.delegpt* @delegpt_create_mlc(i32* bitcast ([2 x i8]* @.str to i32*))
  store %struct.delegpt* %7, %struct.delegpt** %6, align 8
  %8 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %9 = icmp ne %struct.delegpt* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.delegpt* null, %struct.delegpt** %3, align 8
  br label %156

11:                                               ; preds = %2
  %12 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %13 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %82

16:                                               ; preds = %11
  %17 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %18 = call i32 @ah(%struct.delegpt* %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %153

21:                                               ; preds = %16
  %22 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %23 = call i32 @ah(%struct.delegpt* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %153

26:                                               ; preds = %21
  %27 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %28 = call i32 @ah(%struct.delegpt* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %153

31:                                               ; preds = %26
  %32 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %33 = call i32 @ah(%struct.delegpt* %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %153

36:                                               ; preds = %31
  %37 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %38 = call i32 @ah(%struct.delegpt* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %153

41:                                               ; preds = %36
  %42 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %43 = call i32 @ah(%struct.delegpt* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  br label %153

46:                                               ; preds = %41
  %47 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %48 = call i32 @ah(%struct.delegpt* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %153

51:                                               ; preds = %46
  %52 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %53 = call i32 @ah(%struct.delegpt* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  br label %153

56:                                               ; preds = %51
  %57 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %58 = call i32 @ah(%struct.delegpt* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  br label %153

61:                                               ; preds = %56
  %62 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %63 = call i32 @ah(%struct.delegpt* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  br label %153

66:                                               ; preds = %61
  %67 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %68 = call i32 @ah(%struct.delegpt* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  br label %153

71:                                               ; preds = %66
  %72 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %73 = call i32 @ah(%struct.delegpt* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  br label %153

76:                                               ; preds = %71
  %77 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %78 = call i32 @ah(%struct.delegpt* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  br label %153

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %11
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %151

85:                                               ; preds = %82
  %86 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %87 = call i32 @ah(%struct.delegpt* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %153

90:                                               ; preds = %85
  %91 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %92 = call i32 @ah(%struct.delegpt* %91, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  br label %153

95:                                               ; preds = %90
  %96 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %97 = call i32 @ah(%struct.delegpt* %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  br label %153

100:                                              ; preds = %95
  %101 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %102 = call i32 @ah(%struct.delegpt* %101, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  br label %153

105:                                              ; preds = %100
  %106 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %107 = call i32 @ah(%struct.delegpt* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  br label %153

110:                                              ; preds = %105
  %111 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %112 = call i32 @ah(%struct.delegpt* %111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0))
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  br label %153

115:                                              ; preds = %110
  %116 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %117 = call i32 @ah(%struct.delegpt* %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  br label %153

120:                                              ; preds = %115
  %121 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %122 = call i32 @ah(%struct.delegpt* %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  br label %153

125:                                              ; preds = %120
  %126 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %127 = call i32 @ah(%struct.delegpt* %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  br label %153

130:                                              ; preds = %125
  %131 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %132 = call i32 @ah(%struct.delegpt* %131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  br label %153

135:                                              ; preds = %130
  %136 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %137 = call i32 @ah(%struct.delegpt* %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  br label %153

140:                                              ; preds = %135
  %141 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %142 = call i32 @ah(%struct.delegpt* %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0))
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  br label %153

145:                                              ; preds = %140
  %146 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %147 = call i32 @ah(%struct.delegpt* %146, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i64 0, i64 0))
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  br label %153

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150, %82
  %152 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  store %struct.delegpt* %152, %struct.delegpt** %3, align 8
  br label %156

153:                                              ; preds = %149, %144, %139, %134, %129, %124, %119, %114, %109, %104, %99, %94, %89, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20
  %154 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %155 = call i32 @delegpt_free_mlc(%struct.delegpt* %154)
  store %struct.delegpt* null, %struct.delegpt** %3, align 8
  br label %156

156:                                              ; preds = %153, %151, %10
  %157 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  ret %struct.delegpt* %157
}

declare dso_local %struct.delegpt* @delegpt_create_mlc(i32*) #1

declare dso_local i32 @ah(%struct.delegpt*, i8*, i8*) #1

declare dso_local i32 @delegpt_free_mlc(%struct.delegpt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
