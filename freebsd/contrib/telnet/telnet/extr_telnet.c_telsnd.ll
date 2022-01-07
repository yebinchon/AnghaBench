; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_telsnd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_telnet.c_telsnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@ttyiring = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@rlogin = common dso_local global i32 0, align 4
@_POSIX_VDISABLE = common dso_local global i32 0, align 4
@bol = common dso_local global i32 0, align 4
@local = common dso_local global i32 0, align 4
@termEofChar = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"close\0A\00", align 1
@termSuspChar = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"z\0A\00", align 1
@escape = common dso_local global i32 0, align 4
@flushline = common dso_local global i32 0, align 4
@globalmode = common dso_local global i32 0, align 4
@TELOPT_BINARY = common dso_local global i32 0, align 4
@crlf = common dso_local global i32 0, align 4
@MODE_EDIT = common dso_local global i32 0, align 4
@dontlecho = common dso_local global i32 0, align 4
@echoc = common dso_local global i32 0, align 4
@echotoggle = common dso_local global i32 0, align 4
@kludgelinemode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @telsnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telsnd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %183, %67, %61, %49, %0
  %8 = call i32 (...) @NETROOM()
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %184

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @ring_consumed(%struct.TYPE_4__* @ttyiring, i32 %17)
  store i32 1, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ttyiring, i32 0, i32 0), align 8
  store i8* %20, i8** %4, align 8
  %21 = call i32 @ring_full_consecutive(%struct.TYPE_4__* @ttyiring)
  store i32 %21, i32* %1, align 4
  %22 = load i32, i32* %1, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %184

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %10
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  %29 = load i8, i8* %27, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 255
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = trunc i32 %32 to i8
  %34 = call i32 @strip(i8 zeroext %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %1, align 4
  %37 = load i32, i32* %2, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* @rlogin, align 4
  %40 = load i32, i32* @_POSIX_VDISABLE, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %102

42:                                               ; preds = %26
  %43 = load i32, i32* @bol, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  store i32 0, i32* @bol, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @rlogin, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* @local, align 4
  br label %7

50:                                               ; preds = %45
  br label %94

51:                                               ; preds = %42
  %52 = load i32, i32* @local, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %51
  store i32 0, i32* @local, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 46
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @termEofChar, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %54
  store i32 1, i32* @bol, align 4
  %62 = call i32 (i32, ...) @command(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  br label %7

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @termSuspChar, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  store i32 1, i32* @bol, align 4
  %68 = call i32 (i32, ...) @command(i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %7

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @escape, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* %1, align 4
  %76 = call i32 (i32, ...) @command(i32 0, i8* %74, i32 %75)
  store i32 1, i32* @bol, align 4
  %77 = load i32, i32* %1, align 4
  %78 = load i32, i32* %2, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %2, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* @flushline, align 4
  br label %184

80:                                               ; preds = %69
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @rlogin, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %1, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 -1
  store i8* %88, i8** %4, align 8
  %89 = load i32, i32* %2, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %2, align 4
  %91 = load i32, i32* @rlogin, align 4
  store i32 %91, i32* %5, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %84, %80
  br label %93

93:                                               ; preds = %92, %51
  br label %94

94:                                               ; preds = %93, %50
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, 10
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 13
  br i1 %99, label %100, label %101

100:                                              ; preds = %97, %94
  store i32 1, i32* @bol, align 4
  br label %101

101:                                              ; preds = %100, %97
  br label %136

102:                                              ; preds = %26
  %103 = load i32, i32* @escape, align 4
  %104 = load i32, i32* @_POSIX_VDISABLE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %134

106:                                              ; preds = %102
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @escape, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %134

110:                                              ; preds = %106
  %111 = load i32, i32* %1, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load i8*, i8** %4, align 8
  %115 = load i8, i8* %114, align 1
  %116 = call i32 @strip(i8 zeroext %115)
  %117 = load i32, i32* @escape, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load i8*, i8** %4, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %4, align 8
  %122 = load i32, i32* %1, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %1, align 4
  %124 = load i32, i32* %2, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %2, align 4
  store i32 0, i32* @bol, align 4
  br label %133

126:                                              ; preds = %113, %110
  %127 = load i8*, i8** %4, align 8
  %128 = load i32, i32* %1, align 4
  %129 = call i32 (i32, ...) @command(i32 0, i8* %127, i32 %128)
  store i32 1, i32* @bol, align 4
  %130 = load i32, i32* %1, align 4
  %131 = load i32, i32* %2, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %2, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* @flushline, align 4
  br label %184

133:                                              ; preds = %119
  br label %135

134:                                              ; preds = %106, %102
  store i32 0, i32* @bol, align 4
  br label %135

135:                                              ; preds = %134, %133
  br label %136

136:                                              ; preds = %135, %101
  %137 = load i32, i32* @globalmode, align 4
  %138 = call i64 @MODE_LOCAL_CHARS(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load i32, i32* %5, align 4
  %142 = call i64 @TerminalSpecialChars(i32 %141)
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  store i32 1, i32* @bol, align 4
  br label %184

145:                                              ; preds = %140
  br label %146

146:                                              ; preds = %145, %136
  %147 = load i32, i32* @TELOPT_BINARY, align 4
  %148 = call i64 @my_want_state_is_wont(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %174

150:                                              ; preds = %146
  %151 = load i32, i32* %6, align 4
  switch i32 %151, label %170 [
    i32 10, label %152
    i32 13, label %160
    i32 128, label %168
  ]

152:                                              ; preds = %150
  %153 = load i32, i32* @globalmode, align 4
  %154 = call i64 @MODE_LOCAL_CHARS(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = call i32 @NETADD(i32 13)
  br label %158

158:                                              ; preds = %156, %152
  %159 = call i32 @NETADD(i32 10)
  store i32 1, i32* @flushline, align 4
  store i32 1, i32* @bol, align 4
  br label %173

160:                                              ; preds = %150
  %161 = load i32, i32* @crlf, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = call i32 @NET2ADD(i32 13, i32 0)
  br label %167

165:                                              ; preds = %160
  %166 = call i32 @NET2ADD(i32 13, i32 10)
  br label %167

167:                                              ; preds = %165, %163
  store i32 1, i32* @flushline, align 4
  store i32 1, i32* @bol, align 4
  br label %173

168:                                              ; preds = %150
  %169 = call i32 @NET2ADD(i32 128, i32 128)
  br label %173

170:                                              ; preds = %150
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @NETADD(i32 %171)
  br label %173

173:                                              ; preds = %170, %168, %167, %158
  br label %183

174:                                              ; preds = %146
  %175 = load i32, i32* %6, align 4
  %176 = icmp eq i32 %175, 128
  br i1 %176, label %177, label %179

177:                                              ; preds = %174
  %178 = call i32 @NET2ADD(i32 128, i32 128)
  br label %182

179:                                              ; preds = %174
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @NETADD(i32 %180)
  br label %182

182:                                              ; preds = %179, %177
  br label %183

183:                                              ; preds = %182, %173
  br label %7

184:                                              ; preds = %144, %126, %73, %24, %7
  %185 = load i32, i32* %2, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* %2, align 4
  %189 = call i32 @ring_consumed(%struct.TYPE_4__* @ttyiring, i32 %188)
  br label %190

190:                                              ; preds = %187, %184
  %191 = load i32, i32* %3, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %2, align 4
  %195 = icmp ne i32 %194, 0
  br label %196

196:                                              ; preds = %193, %190
  %197 = phi i1 [ true, %190 ], [ %195, %193 ]
  %198 = zext i1 %197 to i32
  ret i32 %198
}

declare dso_local i32 @NETROOM(...) #1

declare dso_local i32 @ring_consumed(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ring_full_consecutive(%struct.TYPE_4__*) #1

declare dso_local i32 @strip(i8 zeroext) #1

declare dso_local i32 @command(i32, ...) #1

declare dso_local i64 @MODE_LOCAL_CHARS(i32) #1

declare dso_local i64 @TerminalSpecialChars(i32) #1

declare dso_local i64 @my_want_state_is_wont(i32) #1

declare dso_local i32 @NETADD(i32) #1

declare dso_local i32 @NET2ADD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
