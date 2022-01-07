; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_auxv.c__elf_aux_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_auxv.c__elf_aux_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__elf_aux_vector = common dso_local global i32* null, align 8
@ENOSYS = common dso_local global i32 0, align 4
@aux_once = common dso_local global i32 0, align 4
@init_aux = common dso_local global i32 0, align 4
@canary = common dso_local global i32* null, align 8
@canary_len = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@execpath = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@hwcap_present = common dso_local global i32 0, align 4
@hwcap = common dso_local global i32 0, align 4
@hwcap2_present = common dso_local global i32 0, align 4
@hwcap2 = common dso_local global i32 0, align 4
@pagesizes = common dso_local global i32* null, align 8
@pagesizes_len = common dso_local global i32 0, align 4
@pagesize = common dso_local global i32 0, align 4
@osreldate = common dso_local global i32 0, align 4
@ncpus = common dso_local global i32 0, align 4
@timekeep = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_elf_aux_info(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @__init_elf_aux_vector()
  %10 = load i32*, i32** @__elf_aux_vector, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @ENOSYS, align 4
  store i32 %13, i32* %4, align 4
  br label %175

14:                                               ; preds = %3
  %15 = load i32, i32* @init_aux, align 4
  %16 = call i32 @_once(i32* @aux_once, i32 %15)
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %171 [
    i32 136, label %18
    i32 135, label %36
    i32 134, label %59
    i32 133, label %73
    i32 130, label %87
    i32 129, label %102
    i32 131, label %119
    i32 132, label %136
    i32 128, label %153
  ]

18:                                               ; preds = %14
  %19 = load i32*, i32** @canary, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32, i32* @canary_len, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i8*, i8** %6, align 8
  %27 = load i32*, i32** @canary, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @memcpy(i8* %26, i32* %27, i32 %28)
  %30 = load i32*, i32** @canary, align 8
  %31 = load i32, i32* @canary_len, align 4
  %32 = call i32 @memset(i32* %30, i32 0, i32 %31)
  store i32* null, i32** @canary, align 8
  store i32 0, i32* %8, align 4
  br label %35

33:                                               ; preds = %21, %18
  %34 = load i32, i32* @ENOENT, align 4
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %33, %25
  br label %173

36:                                               ; preds = %14
  %37 = load i32*, i32** @execpath, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @ENOENT, align 4
  store i32 %40, i32* %8, align 4
  br label %58

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %8, align 4
  br label %57

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i32*, i32** @execpath, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @strlcpy(i8* %47, i32* %48, i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %8, align 4
  br label %56

55:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %55, %53
  br label %57

57:                                               ; preds = %56, %44
  br label %58

58:                                               ; preds = %57, %39
  br label %173

59:                                               ; preds = %14
  %60 = load i32, i32* @hwcap_present, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp eq i64 %64, 4
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @hwcap, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = bitcast i8* %68 to i32*
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %8, align 4
  br label %72

70:                                               ; preds = %62, %59
  %71 = load i32, i32* @ENOENT, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %66
  br label %173

73:                                               ; preds = %14
  %74 = load i32, i32* @hwcap2_present, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = icmp eq i64 %78, 4
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @hwcap2, align 4
  %82 = load i8*, i8** %6, align 8
  %83 = bitcast i8* %82 to i32*
  store i32 %81, i32* %83, align 4
  store i32 0, i32* %8, align 4
  br label %86

84:                                               ; preds = %76, %73
  %85 = load i32, i32* @ENOENT, align 4
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %84, %80
  br label %173

87:                                               ; preds = %14
  %88 = load i32*, i32** @pagesizes, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i32, i32* @pagesizes_len, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load i8*, i8** %6, align 8
  %96 = load i32*, i32** @pagesizes, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @memcpy(i8* %95, i32* %96, i32 %97)
  store i32 0, i32* %8, align 4
  br label %101

99:                                               ; preds = %90, %87
  %100 = load i32, i32* @ENOENT, align 4
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %99, %94
  br label %173

102:                                              ; preds = %14
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp eq i64 %104, 4
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load i32, i32* @pagesize, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* @pagesize, align 4
  %111 = load i8*, i8** %6, align 8
  %112 = bitcast i8* %111 to i32*
  store i32 %110, i32* %112, align 4
  store i32 0, i32* %8, align 4
  br label %115

113:                                              ; preds = %106
  %114 = load i32, i32* @ENOENT, align 4
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %113, %109
  br label %118

116:                                              ; preds = %102
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %116, %115
  br label %173

119:                                              ; preds = %14
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp eq i64 %121, 4
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load i32, i32* @osreldate, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* @osreldate, align 4
  %128 = load i8*, i8** %6, align 8
  %129 = bitcast i8* %128 to i32*
  store i32 %127, i32* %129, align 4
  store i32 0, i32* %8, align 4
  br label %132

130:                                              ; preds = %123
  %131 = load i32, i32* @ENOENT, align 4
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %130, %126
  br label %135

133:                                              ; preds = %119
  %134 = load i32, i32* @EINVAL, align 4
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %133, %132
  br label %173

136:                                              ; preds = %14
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = icmp eq i64 %138, 4
  br i1 %139, label %140, label %150

140:                                              ; preds = %136
  %141 = load i32, i32* @ncpus, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* @ncpus, align 4
  %145 = load i8*, i8** %6, align 8
  %146 = bitcast i8* %145 to i32*
  store i32 %144, i32* %146, align 4
  store i32 0, i32* %8, align 4
  br label %149

147:                                              ; preds = %140
  %148 = load i32, i32* @ENOENT, align 4
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %147, %143
  br label %152

150:                                              ; preds = %136
  %151 = load i32, i32* @EINVAL, align 4
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %150, %149
  br label %173

153:                                              ; preds = %14
  %154 = load i32, i32* %7, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp eq i64 %155, 8
  br i1 %156, label %157, label %168

157:                                              ; preds = %153
  %158 = load i32*, i32** @timekeep, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i32*, i32** @timekeep, align 8
  %162 = bitcast i32* %161 to i8*
  %163 = load i8*, i8** %6, align 8
  %164 = bitcast i8* %163 to i8**
  store i8* %162, i8** %164, align 8
  store i32 0, i32* %8, align 4
  br label %167

165:                                              ; preds = %157
  %166 = load i32, i32* @ENOENT, align 4
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %165, %160
  br label %170

168:                                              ; preds = %153
  %169 = load i32, i32* @EINVAL, align 4
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %168, %167
  br label %173

171:                                              ; preds = %14
  %172 = load i32, i32* @ENOENT, align 4
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %171, %170, %152, %135, %118, %101, %86, %72, %58, %35
  %174 = load i32, i32* %8, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %173, %12
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @__init_elf_aux_vector(...) #1

declare dso_local i32 @_once(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
