; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_sendcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_sendcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sendlist = type { i32, i8*, i32, i64 (i8*, i8*)*, i64, i64 }

@.str = private unnamed_addr constant [47 x i8] c"need at least one argument for 'send' command\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"'send ?' for help\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Unknown send argument '%s'\0A'send ?' for help.\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Ambiguous send argument '%s'\0A'send ?' for help.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [65 x i8] c"Need %d argument%s to 'send %s' command.  'send %s ?' for help.\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@connected = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"?Need to be connected first.\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"There is not enough room in the buffer TO the network\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"to process your request.  Nothing will be done.\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"('send synch' will throw away most data in the network\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"buffer, if this might help.)\0A\00", align 1
@.str.12 = private unnamed_addr constant [45 x i8] c"Telnet 'send' error - argument disappeared!\0A\00", align 1
@IAC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"SENT\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @sendcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendcmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sendlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %211

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %17

17:                                               ; preds = %104, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %107

21:                                               ; preds = %17
  %22 = load i8**, i8*** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = call %struct.sendlist* @GETSEND(i8* %26)
  store %struct.sendlist* %27, %struct.sendlist** %8, align 8
  %28 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %29 = icmp eq %struct.sendlist* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  store i32 0, i32* %3, align 4
  br label %211

37:                                               ; preds = %21
  %38 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %39 = bitcast %struct.sendlist* %38 to i8*
  %40 = call i64 @Ambiguous(i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  store i32 0, i32* %3, align 4
  br label %211

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %53 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %51, %54
  %56 = load i32, i32* %4, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %76

58:                                               ; preds = %50
  %59 = load i32, i32* @stderr, align 4
  %60 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %61 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %64 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 1
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %69 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %70 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %73 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %62, i8* %68, i8* %71, i8* %74)
  store i32 0, i32* %3, align 4
  br label %211

76:                                               ; preds = %50
  %77 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %78 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %6, align 4
  %84 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %85 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %84, i32 0, i32 3
  %86 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %85, align 8
  %87 = bitcast i64 (i8*, i8*)* %86 to i8*
  %88 = icmp eq i8* %87, bitcast (i32 (...)* @send_help to i8*)
  br i1 %88, label %89, label %91

89:                                               ; preds = %76
  %90 = call i32 (...) @send_help()
  store i32 0, i32* %3, align 4
  br label %211

91:                                               ; preds = %76
  %92 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %93 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %98 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %91
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %17

107:                                              ; preds = %17
  %108 = load i32, i32* @connected, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %211

116:                                              ; preds = %110, %107
  %117 = call i32 (...) @NETROOM()
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0))
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %211

125:                                              ; preds = %116
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %126

126:                                              ; preds = %203, %125
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %206

130:                                              ; preds = %126
  %131 = load i8**, i8*** %5, align 8
  %132 = load i32, i32* %7, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call %struct.sendlist* @GETSEND(i8* %135)
  store %struct.sendlist* %136, %struct.sendlist** %8, align 8
  %137 = icmp eq %struct.sendlist* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %130
  %139 = load i32, i32* @stderr, align 4
  %140 = call i32 (i32, i8*, ...) @fprintf(i32 %139, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.12, i64 0, i64 0))
  %141 = call i32 (...) @quit()
  br label %142

142:                                              ; preds = %138, %130
  %143 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %144 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %143, i32 0, i32 3
  %145 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %144, align 8
  %146 = icmp ne i64 (i8*, i8*)* %145, null
  br i1 %146, label %147, label %191

147:                                              ; preds = %142
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  %150 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %151 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %150, i32 0, i32 3
  %152 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %151, align 8
  %153 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %154 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %147
  %158 = load i8**, i8*** %5, align 8
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %158, i64 %161
  %163 = load i8*, i8** %162, align 8
  br label %165

164:                                              ; preds = %147
  br label %165

165:                                              ; preds = %164, %157
  %166 = phi i8* [ %163, %157 ], [ null, %164 ]
  %167 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %168 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %169, 1
  br i1 %170, label %171, label %178

171:                                              ; preds = %165
  %172 = load i8**, i8*** %5, align 8
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 2
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %172, i64 %175
  %177 = load i8*, i8** %176, align 8
  br label %179

178:                                              ; preds = %165
  br label %179

179:                                              ; preds = %178, %171
  %180 = phi i8* [ %177, %171 ], [ null, %178 ]
  %181 = call i64 %152(i8* %166, i8* %180)
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %9, align 4
  %186 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %187 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, %188
  store i32 %190, i32* %7, align 4
  br label %202

191:                                              ; preds = %142
  %192 = load i32, i32* @IAC, align 4
  %193 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %194 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @NET2ADD(i32 %192, i32 %195)
  %197 = load i32, i32* @IAC, align 4
  %198 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %199 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @printoption(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %191, %179
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %7, align 4
  br label %126

206:                                              ; preds = %126
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp eq i32 %207, %208
  %210 = zext i1 %209 to i32
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %206, %120, %113, %89, %58, %42, %30, %13
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.sendlist* @GETSEND(i8*) #1

declare dso_local i64 @Ambiguous(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @send_help(...) #1

declare dso_local i32 @NETROOM(...) #1

declare dso_local i32 @quit(...) #1

declare dso_local i32 @NET2ADD(i32, i32) #1

declare dso_local i32 @printoption(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
