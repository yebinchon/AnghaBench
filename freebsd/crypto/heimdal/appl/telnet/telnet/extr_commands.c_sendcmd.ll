; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_sendcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_sendcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sendlist = type { i32, i8*, i32, i64 (i8*, i8*)*, i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"need at least one argument for 'send' command\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"'send ?' for help\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Unknown send argument '%s'\0D\0A'send ?' for help.\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Ambiguous send argument '%s'\0D\0A'send ?' for help.\0D\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"Need %d argument%s to 'send %s' command.  'send %s ?' for help.\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@connected = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"?Need to be connected first.\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"There is not enough room in the buffer TO the network\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"to process your request.  Nothing will be done.\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"('send synch' will throw away most data in the network\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"buffer, if this might help.)\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Telnet 'send' error - argument disappeared!\0D\0A\00", align 1
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
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %209

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %17

17:                                               ; preds = %102, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %105

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
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  store i32 0, i32* %3, align 4
  br label %209

37:                                               ; preds = %21
  %38 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %39 = call i64 @Ambiguous(%struct.sendlist* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  store i32 0, i32* %3, align 4
  br label %209

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %52 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %50, %53
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %49
  %58 = load i32, i32* @stderr, align 4
  %59 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %60 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %63 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 1
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %68 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %69 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %72 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %61, i8* %67, i8* %70, i8* %73)
  store i32 0, i32* %3, align 4
  br label %209

75:                                               ; preds = %49
  %76 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %77 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %6, align 4
  %83 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %84 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %83, i32 0, i32 3
  %85 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %84, align 8
  %86 = icmp eq i64 (i8*, i8*)* %85, bitcast (i64 (...)* @send_help to i64 (i8*, i8*)*)
  br i1 %86, label %87, label %89

87:                                               ; preds = %75
  %88 = call i64 (...) @send_help()
  store i32 0, i32* %3, align 4
  br label %209

89:                                               ; preds = %75
  %90 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %91 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %7, align 4
  %95 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %96 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %17

105:                                              ; preds = %17
  %106 = load i32, i32* @connected, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %209

114:                                              ; preds = %108, %105
  %115 = call i32 (...) @NETROOM()
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %209

123:                                              ; preds = %114
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %124

124:                                              ; preds = %201, %123
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %204

128:                                              ; preds = %124
  %129 = load i8**, i8*** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call %struct.sendlist* @GETSEND(i8* %133)
  store %struct.sendlist* %134, %struct.sendlist** %8, align 8
  %135 = icmp eq %struct.sendlist* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %128
  %137 = load i32, i32* @stderr, align 4
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %137, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0))
  %139 = call i32 (...) @quit()
  br label %140

140:                                              ; preds = %136, %128
  %141 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %142 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %141, i32 0, i32 3
  %143 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %142, align 8
  %144 = icmp ne i64 (i8*, i8*)* %143, null
  br i1 %144, label %145, label %189

145:                                              ; preds = %140
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  %148 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %149 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %148, i32 0, i32 3
  %150 = load i64 (i8*, i8*)*, i64 (i8*, i8*)** %149, align 8
  %151 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %152 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %145
  %156 = load i8**, i8*** %5, align 8
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %156, i64 %159
  %161 = load i8*, i8** %160, align 8
  br label %163

162:                                              ; preds = %145
  br label %163

163:                                              ; preds = %162, %155
  %164 = phi i8* [ %161, %155 ], [ null, %162 ]
  %165 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %166 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp sgt i32 %167, 1
  br i1 %168, label %169, label %176

169:                                              ; preds = %163
  %170 = load i8**, i8*** %5, align 8
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 2
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8*, i8** %170, i64 %173
  %175 = load i8*, i8** %174, align 8
  br label %177

176:                                              ; preds = %163
  br label %177

177:                                              ; preds = %176, %169
  %178 = phi i8* [ %175, %169 ], [ null, %176 ]
  %179 = call i64 %150(i8* %164, i8* %178)
  %180 = load i32, i32* %9, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %179
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %9, align 4
  %184 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %185 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, %186
  store i32 %188, i32* %7, align 4
  br label %200

189:                                              ; preds = %140
  %190 = load i32, i32* @IAC, align 4
  %191 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %192 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @NET2ADD(i32 %190, i32 %193)
  %195 = load i32, i32* @IAC, align 4
  %196 = load %struct.sendlist*, %struct.sendlist** %8, align 8
  %197 = getelementptr inbounds %struct.sendlist, %struct.sendlist* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @printoption(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %189, %177
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %7, align 4
  br label %124

204:                                              ; preds = %124
  %205 = load i32, i32* %6, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp eq i32 %205, %206
  %208 = zext i1 %207 to i32
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %204, %118, %111, %87, %57, %41, %30, %13
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.sendlist* @GETSEND(i8*) #1

declare dso_local i64 @Ambiguous(%struct.sendlist*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @send_help(...) #1

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
