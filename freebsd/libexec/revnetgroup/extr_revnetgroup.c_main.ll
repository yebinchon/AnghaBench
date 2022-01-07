; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_revnetgroup.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/revnetgroup/extr_revnetgroup.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_entry = type { %struct.group_entry*, i32 }
%struct.member_entry = type { i8*, i8*, %struct.member_entry*, %struct.grouplist* }
%struct.grouplist = type { i8*, %struct.grouplist* }

@LINSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"uhf:\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"please use only one of -u or -h\00", align 1
@optarg = common dso_local global i8* null, align 8
@netgroup = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@gtable = common dso_local global %struct.group_entry** null, align 8
@TABLESIZE = common dso_local global i32 0, align 4
@mtable = common dso_local global %struct.member_entry** null, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"%s.%s\09\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.group_entry*, align 8
  %10 = alloca %struct.member_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.grouplist*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = load i32, i32* @LINSIZ, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i32 -1, i32* %17, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = call i32 (...) @usage()
  br label %28

28:                                               ; preds = %26, %2
  br label %29

29:                                               ; preds = %54, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @getopt(i32 %30, i8** %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %14, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load i32, i32* %14, align 4
  switch i32 %35, label %52 [
    i32 117, label %36
    i32 104, label %43
    i32 102, label %50
  ]

36:                                               ; preds = %34
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 (...) @usage()
  br label %42

42:                                               ; preds = %39, %36
  store i32 0, i32* %17, align 4
  br label %54

43:                                               ; preds = %34
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = call i32 @warnx(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %46, %43
  store i32 1, i32* %17, align 4
  br label %54

50:                                               ; preds = %34
  %51 = load i8*, i8** @optarg, align 8
  store i8* %51, i8** @netgroup, align 8
  br label %54

52:                                               ; preds = %34
  %53 = call i32 (...) @usage()
  br label %54

54:                                               ; preds = %52, %50, %49, %42
  br label %29

55:                                               ; preds = %29
  %56 = load i32, i32* %17, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i8*, i8** @netgroup, align 8
  %62 = call i64 @strcmp(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i8*, i8** @netgroup, align 8
  %66 = call i32* @fopen(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %66, i32** %6, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i8*, i8** @netgroup, align 8
  %70 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %68, %64
  br label %74

72:                                               ; preds = %60
  %73 = load i32*, i32** @stdin, align 8
  store i32* %73, i32** %6, align 8
  br label %74

74:                                               ; preds = %72, %71
  br label %75

75:                                               ; preds = %112, %111, %85, %74
  %76 = load i32, i32* @LINSIZ, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = call i64 @fgets(i8* %23, i32 %76, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %119

80:                                               ; preds = %75
  %81 = getelementptr inbounds i8, i8* %23, i64 0
  %82 = load i8, i8* %81, align 16
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 35
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %75

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %95, %86
  %88 = call i32 @strlen(i8* %23)
  %89 = sub nsw i32 %88, 2
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %23, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 92
  br i1 %94, label %95, label %106

95:                                               ; preds = %87
  %96 = call i32 @strlen(i8* %23)
  %97 = sub nsw i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %23, i64 %98
  %100 = call i32 @strlen(i8* %23)
  %101 = sext i32 %100 to i64
  %102 = sub i64 %21, %101
  %103 = trunc i64 %102 to i32
  %104 = load i32*, i32** %6, align 8
  %105 = call i64 @fgets(i8* %99, i32 %103, i32* %104)
  br label %87

106:                                              ; preds = %87
  store i8* null, i8** %16, align 8
  %107 = call i64 @strpbrk(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %108 = add nsw i64 %107, 1
  %109 = inttoptr i64 %108 to i8*
  store i8* %109, i8** %16, align 8
  %110 = icmp ult i8* %109, inttoptr (i64 2 to i8*)
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %75

112:                                              ; preds = %106
  store i8* %23, i8** %15, align 8
  %113 = load i8*, i8** %16, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 -1
  store i8 0, i8* %114, align 1
  %115 = load %struct.group_entry**, %struct.group_entry*** @gtable, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = call i32 @store(%struct.group_entry** %115, i8* %116, i8* %117)
  br label %75

119:                                              ; preds = %75
  %120 = load i32*, i32** %6, align 8
  %121 = call i32 @fclose(i32* %120)
  store i32 0, i32* %18, align 4
  br label %122

122:                                              ; preds = %181, %119
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* @TABLESIZE, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %184

126:                                              ; preds = %122
  %127 = load %struct.group_entry**, %struct.group_entry*** @gtable, align 8
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.group_entry*, %struct.group_entry** %127, i64 %129
  %131 = load %struct.group_entry*, %struct.group_entry** %130, align 8
  store %struct.group_entry* %131, %struct.group_entry** %9, align 8
  br label %132

132:                                              ; preds = %176, %126
  %133 = load %struct.group_entry*, %struct.group_entry** %9, align 8
  %134 = icmp ne %struct.group_entry* %133, null
  br i1 %134, label %135, label %180

135:                                              ; preds = %132
  %136 = load %struct.group_entry*, %struct.group_entry** %9, align 8
  %137 = getelementptr inbounds %struct.group_entry, %struct.group_entry* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @__setnetgrent(i32 %138)
  br label %140

140:                                              ; preds = %175, %135
  %141 = call i64 @__getnetgrent(i8** %11, i8** %12, i8** %13)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %176

143:                                              ; preds = %140
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load i8*, i8** %11, align 8
  %148 = icmp ne i8* %147, null
  br i1 %148, label %149, label %175

149:                                              ; preds = %146
  %150 = load i8*, i8** %11, align 8
  %151 = call i64 @strcmp(i8* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %160, label %175

153:                                              ; preds = %143
  %154 = load i8*, i8** %12, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %175

156:                                              ; preds = %153
  %157 = load i8*, i8** %12, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %156, %149
  %161 = load %struct.member_entry**, %struct.member_entry*** @mtable, align 8
  %162 = load i32, i32* %17, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %160
  %165 = load i8*, i8** %11, align 8
  br label %168

166:                                              ; preds = %160
  %167 = load i8*, i8** %12, align 8
  br label %168

168:                                              ; preds = %166, %164
  %169 = phi i8* [ %165, %164 ], [ %167, %166 ]
  %170 = load %struct.group_entry*, %struct.group_entry** %9, align 8
  %171 = getelementptr inbounds %struct.group_entry, %struct.group_entry* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i8*, i8** %13, align 8
  %174 = call i32 @mstore(%struct.member_entry** %161, i8* %169, i32 %172, i8* %173)
  br label %175

175:                                              ; preds = %168, %156, %153, %149, %146
  br label %140

176:                                              ; preds = %140
  %177 = load %struct.group_entry*, %struct.group_entry** %9, align 8
  %178 = getelementptr inbounds %struct.group_entry, %struct.group_entry* %177, i32 0, i32 0
  %179 = load %struct.group_entry*, %struct.group_entry** %178, align 8
  store %struct.group_entry* %179, %struct.group_entry** %9, align 8
  br label %132

180:                                              ; preds = %132
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %18, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %18, align 4
  br label %122

184:                                              ; preds = %122
  %185 = call i32 (...) @__endnetgrent()
  store i32 0, i32* %18, align 4
  br label %186

186:                                              ; preds = %232, %184
  %187 = load i32, i32* %18, align 4
  %188 = load i32, i32* @TABLESIZE, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %235

190:                                              ; preds = %186
  %191 = load %struct.member_entry**, %struct.member_entry*** @mtable, align 8
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.member_entry*, %struct.member_entry** %191, i64 %193
  %195 = load %struct.member_entry*, %struct.member_entry** %194, align 8
  store %struct.member_entry* %195, %struct.member_entry** %10, align 8
  br label %196

196:                                              ; preds = %226, %190
  %197 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %198 = icmp ne %struct.member_entry* %197, null
  br i1 %198, label %199, label %231

199:                                              ; preds = %196
  %200 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %201 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %204 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %203, i32 0, i32 1
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8* %202, i8* %205)
  %207 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %208 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %207, i32 0, i32 3
  %209 = load %struct.grouplist*, %struct.grouplist** %208, align 8
  store %struct.grouplist* %209, %struct.grouplist** %19, align 8
  br label %210

210:                                              ; preds = %225, %199
  %211 = load %struct.grouplist*, %struct.grouplist** %19, align 8
  %212 = icmp ne %struct.grouplist* %211, null
  br i1 %212, label %213, label %226

213:                                              ; preds = %210
  %214 = load %struct.grouplist*, %struct.grouplist** %19, align 8
  %215 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %216)
  %218 = load %struct.grouplist*, %struct.grouplist** %19, align 8
  %219 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %218, i32 0, i32 1
  %220 = load %struct.grouplist*, %struct.grouplist** %219, align 8
  store %struct.grouplist* %220, %struct.grouplist** %19, align 8
  %221 = load %struct.grouplist*, %struct.grouplist** %19, align 8
  %222 = icmp ne %struct.grouplist* %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %213
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %213
  br label %210

226:                                              ; preds = %210
  %227 = load %struct.member_entry*, %struct.member_entry** %10, align 8
  %228 = getelementptr inbounds %struct.member_entry, %struct.member_entry* %227, i32 0, i32 2
  %229 = load %struct.member_entry*, %struct.member_entry** %228, align 8
  store %struct.member_entry* %229, %struct.member_entry** %10, align 8
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %196

231:                                              ; preds = %196
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %18, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %18, align 4
  br label %186

235:                                              ; preds = %186
  %236 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usage(...) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strpbrk(i8*, i8*) #2

declare dso_local i32 @store(%struct.group_entry**, i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @__setnetgrent(i32) #2

declare dso_local i64 @__getnetgrent(i8**, i8**, i8**) #2

declare dso_local i32 @mstore(%struct.member_entry**, i8*, i32, i8*) #2

declare dso_local i32 @__endnetgrent(...) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
