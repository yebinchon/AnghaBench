; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_setcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_setcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.togglelist = type { i8*, i8*, i32*, i8*, i64*, i32 (i8*)* }
%struct.setlist = type { i8*, i8*, i32*, i8*, i64*, i32 (i8*)* }

@.str = private unnamed_addr constant [48 x i8] c"Format is 'set Name Value'\0D\0A'set ?' for help.\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@Setlist = common dso_local global %struct.togglelist* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"%-15s %s\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"display help information\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [45 x i8] c"'%s': unknown argument ('set ?' for help).\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"'%s': ambiguous argument ('set ?' for help).\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"Format is 'set togglename [on|off]'\0D\0A'set ?' for help.\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"%s %s.\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Will\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Won't\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"%s set to \22%s\22.\0D\0A\00", align 1
@_POSIX_VDISABLE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [24 x i8] c"%s character is '%s'.\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @setcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setcmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.setlist*, align 8
  %8 = alloca %struct.togglelist*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %216

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @isprefix(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @isprefix(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %25, %19
  %32 = load %struct.togglelist*, %struct.togglelist** @Setlist, align 8
  %33 = bitcast %struct.togglelist* %32 to %struct.setlist*
  store %struct.setlist* %33, %struct.setlist** %7, align 8
  br label %34

34:                                               ; preds = %47, %31
  %35 = load %struct.setlist*, %struct.setlist** %7, align 8
  %36 = getelementptr inbounds %struct.setlist, %struct.setlist* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load %struct.setlist*, %struct.setlist** %7, align 8
  %41 = getelementptr inbounds %struct.setlist, %struct.setlist* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.setlist*, %struct.setlist** %7, align 8
  %44 = getelementptr inbounds %struct.setlist, %struct.setlist* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %42, i8* %45)
  br label %47

47:                                               ; preds = %39
  %48 = load %struct.setlist*, %struct.setlist** %7, align 8
  %49 = getelementptr inbounds %struct.setlist, %struct.setlist* %48, i32 1
  store %struct.setlist* %49, %struct.setlist** %7, align 8
  br label %34

50:                                               ; preds = %34
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %52 = call i32 @settogglehelp(i32 1)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %216

54:                                               ; preds = %25, %16
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call %struct.togglelist* @getset(i8* %57)
  %59 = bitcast %struct.togglelist* %58 to %struct.setlist*
  store %struct.setlist* %59, %struct.setlist** %7, align 8
  %60 = load %struct.setlist*, %struct.setlist** %7, align 8
  %61 = icmp eq %struct.setlist* %60, null
  br i1 %61, label %62, label %146

62:                                               ; preds = %54
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = call %struct.togglelist* @GETTOGGLE(i8* %65)
  store %struct.togglelist* %66, %struct.togglelist** %8, align 8
  %67 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %68 = icmp eq %struct.togglelist* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i32, i32* @stderr, align 4
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @fprintf(i32 %70, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %73)
  store i32 0, i32* %3, align 4
  br label %216

75:                                               ; preds = %62
  %76 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %77 = call i64 @Ambiguous(%struct.togglelist* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* @stderr, align 4
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 1
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* %83)
  store i32 0, i32* %3, align 4
  br label %216

85:                                               ; preds = %75
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %88 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %135

91:                                               ; preds = %86
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 2
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94, %91
  %101 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %102 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  store i32 1, i32* %103, align 4
  br label %117

104:                                              ; preds = %94
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 2
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %112 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  store i32 0, i32* %113, align 4
  br label %116

114:                                              ; preds = %104
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %216

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %100
  %118 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %119 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %118, i32 0, i32 3
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %134

122:                                              ; preds = %117
  %123 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %124 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0)
  %130 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %131 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %130, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i8* %129, i8* %132)
  br label %134

134:                                              ; preds = %122, %117
  br label %135

135:                                              ; preds = %134, %86
  %136 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %137 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %136, i32 0, i32 5
  %138 = load i32 (i8*)*, i32 (i8*)** %137, align 8
  %139 = icmp ne i32 (i8*)* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.togglelist*, %struct.togglelist** %8, align 8
  %142 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %141, i32 0, i32 5
  %143 = load i32 (i8*)*, i32 (i8*)** %142, align 8
  %144 = call i32 %143(i8* inttoptr (i64 1 to i8*))
  br label %145

145:                                              ; preds = %140, %135
  br label %214

146:                                              ; preds = %54
  %147 = load i32, i32* %4, align 4
  %148 = icmp ne i32 %147, 3
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %216

151:                                              ; preds = %146
  %152 = load %struct.setlist*, %struct.setlist** %7, align 8
  %153 = bitcast %struct.setlist* %152 to %struct.togglelist*
  %154 = call i64 @Ambiguous(%struct.togglelist* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load i32, i32* @stderr, align 4
  %158 = load i8**, i8*** %5, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @fprintf(i32 %157, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* %160)
  store i32 0, i32* %3, align 4
  br label %216

162:                                              ; preds = %151
  %163 = load %struct.setlist*, %struct.setlist** %7, align 8
  %164 = getelementptr inbounds %struct.setlist, %struct.setlist* %163, i32 0, i32 5
  %165 = load i32 (i8*)*, i32 (i8*)** %164, align 8
  %166 = icmp ne i32 (i8*)* %165, null
  br i1 %166, label %167, label %183

167:                                              ; preds = %162
  %168 = load %struct.setlist*, %struct.setlist** %7, align 8
  %169 = getelementptr inbounds %struct.setlist, %struct.setlist* %168, i32 0, i32 5
  %170 = load i32 (i8*)*, i32 (i8*)** %169, align 8
  %171 = load i8**, i8*** %5, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 2
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 %170(i8* %173)
  %175 = load %struct.setlist*, %struct.setlist** %7, align 8
  %176 = getelementptr inbounds %struct.setlist, %struct.setlist* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = load %struct.setlist*, %struct.setlist** %7, align 8
  %179 = getelementptr inbounds %struct.setlist, %struct.setlist* %178, i32 0, i32 4
  %180 = load i64*, i64** %179, align 8
  %181 = bitcast i64* %180 to i8*
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* %177, i8* %181)
  br label %211

183:                                              ; preds = %162
  %184 = load i8**, i8*** %5, align 8
  %185 = getelementptr inbounds i8*, i8** %184, i64 2
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %183
  %190 = load i8**, i8*** %5, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 2
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @special(i8* %192)
  store i32 %193, i32* %6, align 4
  br label %196

194:                                              ; preds = %183
  %195 = load i32, i32* @_POSIX_VDISABLE, align 4
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %194, %189
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = load %struct.setlist*, %struct.setlist** %7, align 8
  %200 = getelementptr inbounds %struct.setlist, %struct.setlist* %199, i32 0, i32 4
  %201 = load i64*, i64** %200, align 8
  store i64 %198, i64* %201, align 8
  %202 = load %struct.setlist*, %struct.setlist** %7, align 8
  %203 = getelementptr inbounds %struct.setlist, %struct.setlist* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.setlist*, %struct.setlist** %7, align 8
  %206 = getelementptr inbounds %struct.setlist, %struct.setlist* %205, i32 0, i32 4
  %207 = load i64*, i64** %206, align 8
  %208 = load i64, i64* %207, align 8
  %209 = call i8* @control(i64 %208)
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8* %204, i8* %209)
  br label %211

211:                                              ; preds = %196, %167
  br label %212

212:                                              ; preds = %211
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213, %145
  %215 = call i32 (...) @slc_check()
  store i32 1, i32* %3, align 4
  br label %216

216:                                              ; preds = %214, %156, %149, %114, %79, %69, %50, %14
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @isprefix(i8*, i8*) #1

declare dso_local i32 @settogglehelp(i32) #1

declare dso_local %struct.togglelist* @getset(i8*) #1

declare dso_local %struct.togglelist* @GETTOGGLE(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @Ambiguous(%struct.togglelist*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @special(i8*) #1

declare dso_local i8* @control(i64) #1

declare dso_local i32 @slc_check(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
