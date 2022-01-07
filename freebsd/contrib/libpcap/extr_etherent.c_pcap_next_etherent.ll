; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_etherent.c_pcap_next_etherent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_etherent.c_pcap_next_etherent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_etherent = type { i32*, i8* }

@pcap_next_etherent.e = internal global %struct.pcap_etherent zeroinitializer, align 8
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pcap_etherent* @pcap_next_etherent(i32* %0) #0 {
  %2 = alloca %struct.pcap_etherent*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %9 = call i32 @memset(i8* bitcast (%struct.pcap_etherent* @pcap_next_etherent.e to i8*), i32 0, i32 16)
  br label %10

10:                                               ; preds = %117, %106, %95, %32, %20, %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @skip_space(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EOF, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store %struct.pcap_etherent* null, %struct.pcap_etherent** %2, align 8
  br label %150

17:                                               ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %10

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @isxdigit(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @skip_line(i32* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @EOF, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store %struct.pcap_etherent* null, %struct.pcap_etherent** %2, align 8
  br label %150

32:                                               ; preds = %25
  br label %10

33:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %81, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 6
  br i1 %36, label %37, label %84

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @xdtoi(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @getc(i32* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @EOF, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store %struct.pcap_etherent* null, %struct.pcap_etherent** %2, align 8
  br label %150

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = call i64 @isxdigit(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, 4
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @xdtoi(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @getc(i32* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @EOF, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  store %struct.pcap_etherent* null, %struct.pcap_etherent** %2, align 8
  br label %150

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %63, %46
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** getelementptr inbounds (%struct.pcap_etherent, %struct.pcap_etherent* @pcap_next_etherent.e, i32 0, i32 0), align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 58
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %84

73:                                               ; preds = %64
  %74 = load i32*, i32** %3, align 8
  %75 = call i32 @getc(i32* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @EOF, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store %struct.pcap_etherent* null, %struct.pcap_etherent** %2, align 8
  br label %150

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %34

84:                                               ; preds = %72, %34
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @isspace(i32 %85) #3
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @skip_line(i32* %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @EOF, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store %struct.pcap_etherent* null, %struct.pcap_etherent** %2, align 8
  br label %150

95:                                               ; preds = %88
  br label %10

96:                                               ; preds = %84
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @skip_space(i32* %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @EOF, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store %struct.pcap_etherent* null, %struct.pcap_etherent** %2, align 8
  br label %150

103:                                              ; preds = %96
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, 10
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %10

107:                                              ; preds = %103
  %108 = load i32, i32* %4, align 4
  %109 = icmp eq i32 %108, 35
  br i1 %109, label %110, label %118

110:                                              ; preds = %107
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @skip_line(i32* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @EOF, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store %struct.pcap_etherent* null, %struct.pcap_etherent** %2, align 8
  br label %150

117:                                              ; preds = %110
  br label %10

118:                                              ; preds = %107
  %119 = load i8*, i8** getelementptr inbounds (%struct.pcap_etherent, %struct.pcap_etherent* @pcap_next_etherent.e, i32 0, i32 1), align 8
  store i8* %119, i8** %7, align 8
  store i64 7, i64* %8, align 8
  br label %120

120:                                              ; preds = %140, %118
  %121 = load i32, i32* %4, align 4
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %7, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %7, align 8
  store i8 %122, i8* %123, align 1
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @getc(i32* %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = load i32, i32* @EOF, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  store %struct.pcap_etherent* null, %struct.pcap_etherent** %2, align 8
  br label %150

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @isspace(i32 %133) #3
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i64, i64* %8, align 8
  %138 = add i64 %137, -1
  store i64 %138, i64* %8, align 8
  %139 = icmp ne i64 %138, 0
  br label %140

140:                                              ; preds = %136, %132
  %141 = phi i1 [ false, %132 ], [ %139, %136 ]
  br i1 %141, label %120, label %142

142:                                              ; preds = %140
  %143 = load i8*, i8** %7, align 8
  store i8 0, i8* %143, align 1
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 10
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @skip_line(i32* %147)
  br label %149

149:                                              ; preds = %146, %142
  store %struct.pcap_etherent* @pcap_next_etherent.e, %struct.pcap_etherent** %2, align 8
  br label %150

150:                                              ; preds = %149, %130, %116, %102, %94, %79, %62, %45, %31, %16
  %151 = load %struct.pcap_etherent*, %struct.pcap_etherent** %2, align 8
  ret %struct.pcap_etherent* %151
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @skip_space(i32*) #1

declare dso_local i64 @isxdigit(i32) #1

declare dso_local i32 @skip_line(i32*) #1

declare dso_local i32 @xdtoi(i32) #1

declare dso_local i32 @getc(i32*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
