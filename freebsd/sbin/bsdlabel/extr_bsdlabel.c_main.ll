; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"ABb:efm:nRrw\00", align 1
@allfields = common dso_local global i32 0, align 4
@installboot = common dso_local global i64 0, align 8
@optarg = common dso_local global i32 0, align 4
@xxboot = common dso_local global i32 0, align 4
@is_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"i386\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"amd64\00", align 1
@labelsoffset = common dso_local global i64 0, align 8
@labeloffset = common dso_local global i64 0, align 8
@bbsize = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Unsupported architecture\00", align 1
@disable_write = common dso_local global i32 0, align 4
@op = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"a -m <architecture> option must be specified\00", align 1
@specname = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"unable to get correct path for %s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"error opening %s\00", align 1
@pname = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"error getting providername for %s\00", align 1
@lab = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"fopen %s\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"auto\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %10, align 8
  br label %11

11:                                               ; preds = %60, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %14, i32* %7, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %61

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %58 [
    i32 65, label %18
    i32 66, label %19
    i32 98, label %22
    i32 102, label %24
    i32 109, label %25
    i32 110, label %37
    i32 82, label %38
    i32 101, label %44
    i32 114, label %50
    i32 119, label %51
    i32 63, label %57
  ]

18:                                               ; preds = %16
  store i32 1, i32* @allfields, align 4
  br label %60

19:                                               ; preds = %16
  %20 = load i64, i64* @installboot, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @installboot, align 8
  br label %60

22:                                               ; preds = %16
  %23 = load i32, i32* @optarg, align 4
  store i32 %23, i32* @xxboot, align 4
  br label %60

24:                                               ; preds = %16
  store i32 1, i32* @is_file, align 4
  br label %60

25:                                               ; preds = %16
  %26 = load i32, i32* @optarg, align 4
  %27 = call i32 @strcmp(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @optarg, align 4
  %31 = call i32 @strcmp(i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29, %25
  store i64 1, i64* @labelsoffset, align 8
  store i64 0, i64* @labeloffset, align 8
  store i32 8192, i32* @bbsize, align 4
  br label %36

34:                                               ; preds = %29
  %35 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %33
  br label %60

37:                                               ; preds = %16
  store i32 1, i32* @disable_write, align 4
  br label %60

38:                                               ; preds = %16
  %39 = load i32, i32* @op, align 4
  %40 = icmp ne i32 %39, 130
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 (...) @usage()
  br label %43

43:                                               ; preds = %41, %38
  store i32 131, i32* @op, align 4
  br label %60

44:                                               ; preds = %16
  %45 = load i32, i32* @op, align 4
  %46 = icmp ne i32 %45, 130
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %47, %44
  store i32 133, i32* @op, align 4
  br label %60

50:                                               ; preds = %16
  br label %60

51:                                               ; preds = %16
  %52 = load i32, i32* @op, align 4
  %53 = icmp ne i32 %52, 130
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %54, %51
  store i32 129, i32* @op, align 4
  br label %60

57:                                               ; preds = %16
  br label %58

58:                                               ; preds = %16, %57
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %56, %50, %49, %43, %37, %36, %24, %22, %19, %18
  br label %11

61:                                               ; preds = %11
  %62 = load i64, i64* @optind, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  %67 = load i64, i64* @optind, align 8
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 %67
  store i8** %69, i8*** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %61
  %73 = call i32 (...) @usage()
  br label %74

74:                                               ; preds = %72, %61
  %75 = load i64, i64* @labelsoffset, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* @labeloffset, align 8
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77, %74
  %81 = call i32 @errx(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %77
  %83 = load i32, i32* @is_file, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i8**, i8*** %5, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** @specname, align 8
  br label %123

89:                                               ; preds = %82
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @g_device_path(i8* %92)
  store i8* %93, i8** @specname, align 8
  %94 = load i8*, i8** @specname, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load i8**, i8*** %5, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %99)
  store i32 1, i32* %3, align 4
  br label %225

101:                                              ; preds = %89
  %102 = load i8*, i8** @specname, align 8
  %103 = load i32, i32* @O_RDONLY, align 4
  %104 = call i32 @open(i8* %102, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i8*, i8** @specname, align 8
  %109 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %108)
  store i32 1, i32* %3, align 4
  br label %225

110:                                              ; preds = %101
  %111 = load i32, i32* %9, align 4
  %112 = call i32* @g_providername(i32 %111)
  store i32* %112, i32** @pname, align 8
  %113 = load i32*, i32** @pname, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load i8*, i8** @specname, align 8
  %117 = call i32 @warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %116)
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @close(i32 %118)
  store i32 1, i32* %3, align 4
  br label %225

120:                                              ; preds = %110
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @close(i32 %121)
  br label %123

123:                                              ; preds = %120, %85
  %124 = load i64, i64* @installboot, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* @op, align 4
  %128 = icmp eq i32 %127, 130
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 128, i32* @op, align 4
  br label %135

130:                                              ; preds = %126, %123
  %131 = load i32, i32* @op, align 4
  %132 = icmp eq i32 %131, 130
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  store i32 132, i32* @op, align 4
  br label %134

134:                                              ; preds = %133, %130
  br label %135

135:                                              ; preds = %134, %129
  %136 = load i32, i32* @op, align 4
  switch i32 %136, label %222 [
    i32 130, label %137
    i32 133, label %138
    i32 132, label %147
    i32 131, label %157
    i32 129, label %182
    i32 128, label %206
  ]

137:                                              ; preds = %135
  br label %222

138:                                              ; preds = %135
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 1
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = call i32 (...) @usage()
  br label %143

143:                                              ; preds = %141, %138
  %144 = call i32 @readlabel(i32 1)
  %145 = call i32 @fixlabel(i32* @lab)
  %146 = call i32 (...) @edit()
  store i32 %146, i32* %8, align 4
  br label %222

147:                                              ; preds = %135
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 1
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = call i32 (...) @usage()
  br label %152

152:                                              ; preds = %150, %147
  %153 = call i32 @readlabel(i32 1)
  %154 = load i32, i32* @stdout, align 4
  %155 = call i32 @display(i32 %154, i32* null)
  %156 = call i32 @checklabel(i32* null)
  store i32 %156, i32* %8, align 4
  br label %222

157:                                              ; preds = %135
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 2
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = call i32 (...) @usage()
  br label %162

162:                                              ; preds = %160, %157
  %163 = load i8**, i8*** %5, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 1
  %165 = load i8*, i8** %164, align 8
  %166 = call i32* @fopen(i8* %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %166, i32** %6, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %173, label %168

168:                                              ; preds = %162
  %169 = load i8**, i8*** %5, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 1
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @err(i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* %171)
  br label %173

173:                                              ; preds = %168, %162
  %174 = call i32 @readlabel(i32 0)
  %175 = load i32*, i32** %6, align 8
  %176 = call i32 @getasciilabel(i32* %175, i32* @lab)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %173
  %179 = call i32 @exit(i32 1) #3
  unreachable

180:                                              ; preds = %173
  %181 = call i32 (...) @writelabel()
  store i32 %181, i32* %8, align 4
  br label %222

182:                                              ; preds = %135
  %183 = load i32, i32* %4, align 4
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load i8**, i8*** %5, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 1
  %188 = load i8*, i8** %187, align 8
  store i8* %188, i8** %10, align 8
  br label %196

189:                                              ; preds = %182
  %190 = load i32, i32* %4, align 4
  %191 = icmp eq i32 %190, 1
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %195

193:                                              ; preds = %189
  %194 = call i32 (...) @usage()
  br label %195

195:                                              ; preds = %193, %192
  br label %196

196:                                              ; preds = %195, %185
  %197 = call i32 @readlabel(i32 0)
  %198 = load i8*, i8** %10, align 8
  %199 = call i32 @makelabel(i8* %198, i32* @lab)
  %200 = call i32 @fixlabel(i32* @lab)
  %201 = call i32 @checklabel(i32* null)
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = call i32 (...) @writelabel()
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %203, %196
  br label %222

206:                                              ; preds = %135
  %207 = call i32 @readlabel(i32 1)
  %208 = call i32 @fixlabel(i32* @lab)
  %209 = load i32, i32* %4, align 4
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %211, label %216

211:                                              ; preds = %206
  %212 = load i8**, i8*** %5, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 1
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @makelabel(i8* %214, i32* @lab)
  br label %216

216:                                              ; preds = %211, %206
  %217 = call i32 @checklabel(i32* null)
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = call i32 (...) @writelabel()
  store i32 %220, i32* %8, align 4
  br label %221

221:                                              ; preds = %219, %216
  br label %222

222:                                              ; preds = %135, %221, %205, %180, %152, %143, %137
  %223 = load i32, i32* %8, align 4
  %224 = call i32 @exit(i32 %223) #3
  unreachable

225:                                              ; preds = %115, %107, %96
  %226 = load i32, i32* %3, align 4
  ret i32 %226
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i8* @g_device_path(i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32* @g_providername(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @readlabel(i32) #1

declare dso_local i32 @fixlabel(i32*) #1

declare dso_local i32 @edit(...) #1

declare dso_local i32 @display(i32, i32*) #1

declare dso_local i32 @checklabel(i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @getasciilabel(i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @writelabel(...) #1

declare dso_local i32 @makelabel(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
