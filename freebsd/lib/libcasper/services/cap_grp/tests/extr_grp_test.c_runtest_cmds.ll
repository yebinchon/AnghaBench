; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/tests/extr_grp_test.c_runtest_cmds.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/tests/extr_grp_test.c_runtest_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }

@SETGRENT = common dso_local global i32 0, align 4
@GETGRENT0 = common dso_local global i32 0, align 4
@GETGRENT1 = common dso_local global i32 0, align 4
@GETGRENT_R0 = common dso_local global i32 0, align 4
@GETGRENT_R1 = common dso_local global i32 0, align 4
@GETGRENT_R2 = common dso_local global i32 0, align 4
@GETGRENT2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"wheel\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@GETGRNAM = common dso_local global i32 0, align 4
@GETGRNAM_R = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@GETGRGID = common dso_local global i32 0, align 4
@GETGRGID_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @runtest_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runtest_cmds(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.group*, align 8
  %7 = alloca %struct.group*, align 8
  %8 = alloca %struct.group, align 4
  %9 = alloca %struct.group, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  %10 = call i32 (...) @setgrent()
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @cap_setgrent(i32* %11)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @SETGRENT, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = call %struct.group* (...) @getgrent()
  store %struct.group* %19, %struct.group** %6, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call %struct.group* @cap_getgrent(i32* %20)
  store %struct.group* %21, %struct.group** %7, align 8
  %22 = load %struct.group*, %struct.group** %6, align 8
  %23 = load %struct.group*, %struct.group** %7, align 8
  %24 = call i64 @group_compare(%struct.group* %22, %struct.group* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  %27 = load i32, i32* @GETGRENT0, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = call %struct.group* (...) @getgrent()
  store %struct.group* %30, %struct.group** %6, align 8
  %31 = load i32*, i32** %2, align 8
  %32 = call %struct.group* @cap_getgrent(i32* %31)
  store %struct.group* %32, %struct.group** %7, align 8
  %33 = load %struct.group*, %struct.group** %6, align 8
  %34 = load %struct.group*, %struct.group** %7, align 8
  %35 = call i64 @group_compare(%struct.group* %33, %struct.group* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32, i32* @GETGRENT1, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %26
  br label %42

42:                                               ; preds = %41, %18
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %44 = call i32 @getgrent_r(%struct.group* %8, i8* %43, i32 1024, %struct.group** %6)
  %45 = load i32*, i32** %2, align 8
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %47 = call i32 @cap_getgrent_r(i32* %45, %struct.group* %9, i8* %46, i32 1024, %struct.group** %7)
  %48 = load %struct.group*, %struct.group** %6, align 8
  %49 = load %struct.group*, %struct.group** %7, align 8
  %50 = call i64 @group_compare(%struct.group* %48, %struct.group* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %42
  %53 = load i32, i32* @GETGRENT_R0, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %57 = call i32 @getgrent_r(%struct.group* %8, i8* %56, i32 1024, %struct.group** %6)
  %58 = load i32*, i32** %2, align 8
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %60 = call i32 @cap_getgrent_r(i32* %58, %struct.group* %9, i8* %59, i32 1024, %struct.group** %7)
  %61 = load %struct.group*, %struct.group** %6, align 8
  %62 = load %struct.group*, %struct.group** %7, align 8
  %63 = call i64 @group_compare(%struct.group* %61, %struct.group* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = load i32, i32* @GETGRENT_R1, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %52
  br label %70

70:                                               ; preds = %69, %42
  %71 = call i32 (...) @setgrent()
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @cap_setgrent(i32* %72)
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @SETGRENT, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %81 = call i32 @getgrent_r(%struct.group* %8, i8* %80, i32 1024, %struct.group** %6)
  %82 = load i32*, i32** %2, align 8
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %84 = call i32 @cap_getgrent_r(i32* %82, %struct.group* %9, i8* %83, i32 1024, %struct.group** %7)
  %85 = load %struct.group*, %struct.group** %6, align 8
  %86 = load %struct.group*, %struct.group** %7, align 8
  %87 = call i64 @group_compare(%struct.group* %85, %struct.group* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load i32, i32* @GETGRENT_R2, align 4
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %89, %79
  %94 = call %struct.group* (...) @getgrent()
  store %struct.group* %94, %struct.group** %6, align 8
  %95 = load i32*, i32** %2, align 8
  %96 = call %struct.group* @cap_getgrent(i32* %95)
  store %struct.group* %96, %struct.group** %7, align 8
  %97 = load %struct.group*, %struct.group** %6, align 8
  %98 = load %struct.group*, %struct.group** %7, align 8
  %99 = call i64 @group_compare(%struct.group* %97, %struct.group* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load i32, i32* @GETGRENT2, align 4
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %101, %93
  %106 = call %struct.group* @getgrnam(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.group* %106, %struct.group** %6, align 8
  %107 = load i32*, i32** %2, align 8
  %108 = call %struct.group* @cap_getgrnam(i32* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.group* %108, %struct.group** %7, align 8
  %109 = load %struct.group*, %struct.group** %6, align 8
  %110 = load %struct.group*, %struct.group** %7, align 8
  %111 = call i64 @group_compare(%struct.group* %109, %struct.group* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %105
  %114 = call %struct.group* @getgrnam(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.group* %114, %struct.group** %6, align 8
  %115 = load i32*, i32** %2, align 8
  %116 = call %struct.group* @cap_getgrnam(i32* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.group* %116, %struct.group** %7, align 8
  %117 = load %struct.group*, %struct.group** %6, align 8
  %118 = load %struct.group*, %struct.group** %7, align 8
  %119 = call i64 @group_compare(%struct.group* %117, %struct.group* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load i32, i32* @GETGRNAM, align 4
  %123 = load i32, i32* %5, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %121, %113
  br label %126

126:                                              ; preds = %125, %105
  %127 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %128 = call i32 @getgrnam_r(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.group* %8, i8* %127, i32 1024, %struct.group** %6)
  %129 = load i32*, i32** %2, align 8
  %130 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %131 = call i32 @cap_getgrnam_r(i32* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.group* %9, i8* %130, i32 1024, %struct.group** %7)
  %132 = load %struct.group*, %struct.group** %6, align 8
  %133 = load %struct.group*, %struct.group** %7, align 8
  %134 = call i64 @group_compare(%struct.group* %132, %struct.group* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %126
  %137 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %138 = call i32 @getgrnam_r(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.group* %8, i8* %137, i32 1024, %struct.group** %6)
  %139 = load i32*, i32** %2, align 8
  %140 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %141 = call i32 @cap_getgrnam_r(i32* %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.group* %9, i8* %140, i32 1024, %struct.group** %7)
  %142 = load %struct.group*, %struct.group** %6, align 8
  %143 = load %struct.group*, %struct.group** %7, align 8
  %144 = call i64 @group_compare(%struct.group* %142, %struct.group* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %136
  %147 = load i32, i32* @GETGRNAM_R, align 4
  %148 = load i32, i32* %5, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %146, %136
  br label %151

151:                                              ; preds = %150, %126
  %152 = load i32, i32* @GID_WHEEL, align 4
  %153 = call %struct.group* @getgrgid(i32 %152)
  store %struct.group* %153, %struct.group** %6, align 8
  %154 = load i32*, i32** %2, align 8
  %155 = load i32, i32* @GID_WHEEL, align 4
  %156 = call %struct.group* @cap_getgrgid(i32* %154, i32 %155)
  store %struct.group* %156, %struct.group** %7, align 8
  %157 = load %struct.group*, %struct.group** %6, align 8
  %158 = load %struct.group*, %struct.group** %7, align 8
  %159 = call i64 @group_compare(%struct.group* %157, %struct.group* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %151
  %162 = load i32, i32* @GID_OPERATOR, align 4
  %163 = call %struct.group* @getgrgid(i32 %162)
  store %struct.group* %163, %struct.group** %6, align 8
  %164 = load i32*, i32** %2, align 8
  %165 = load i32, i32* @GID_OPERATOR, align 4
  %166 = call %struct.group* @cap_getgrgid(i32* %164, i32 %165)
  store %struct.group* %166, %struct.group** %7, align 8
  %167 = load %struct.group*, %struct.group** %6, align 8
  %168 = load %struct.group*, %struct.group** %7, align 8
  %169 = call i64 @group_compare(%struct.group* %167, %struct.group* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %161
  %172 = load i32, i32* @GETGRGID, align 4
  %173 = load i32, i32* %5, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %171, %161
  br label %176

176:                                              ; preds = %175, %151
  %177 = load i32, i32* @GID_WHEEL, align 4
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %179 = call i32 @getgrgid_r(i32 %177, %struct.group* %8, i8* %178, i32 1024, %struct.group** %6)
  %180 = load i32*, i32** %2, align 8
  %181 = load i32, i32* @GID_WHEEL, align 4
  %182 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %183 = call i32 @cap_getgrgid_r(i32* %180, i32 %181, %struct.group* %9, i8* %182, i32 1024, %struct.group** %7)
  %184 = load %struct.group*, %struct.group** %6, align 8
  %185 = load %struct.group*, %struct.group** %7, align 8
  %186 = call i64 @group_compare(%struct.group* %184, %struct.group* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %205

188:                                              ; preds = %176
  %189 = load i32, i32* @GID_OPERATOR, align 4
  %190 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %191 = call i32 @getgrgid_r(i32 %189, %struct.group* %8, i8* %190, i32 1024, %struct.group** %6)
  %192 = load i32*, i32** %2, align 8
  %193 = load i32, i32* @GID_OPERATOR, align 4
  %194 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %195 = call i32 @cap_getgrgid_r(i32* %192, i32 %193, %struct.group* %9, i8* %194, i32 1024, %struct.group** %7)
  %196 = load %struct.group*, %struct.group** %6, align 8
  %197 = load %struct.group*, %struct.group** %7, align 8
  %198 = call i64 @group_compare(%struct.group* %196, %struct.group* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %188
  %201 = load i32, i32* @GETGRGID_R, align 4
  %202 = load i32, i32* %5, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %200, %188
  br label %205

205:                                              ; preds = %204, %176
  %206 = load i32, i32* %5, align 4
  ret i32 %206
}

declare dso_local i32 @setgrent(...) #1

declare dso_local i32 @cap_setgrent(i32*) #1

declare dso_local %struct.group* @getgrent(...) #1

declare dso_local %struct.group* @cap_getgrent(i32*) #1

declare dso_local i64 @group_compare(%struct.group*, %struct.group*) #1

declare dso_local i32 @getgrent_r(%struct.group*, i8*, i32, %struct.group**) #1

declare dso_local i32 @cap_getgrent_r(i32*, %struct.group*, i8*, i32, %struct.group**) #1

declare dso_local %struct.group* @getgrnam(i8*) #1

declare dso_local %struct.group* @cap_getgrnam(i32*, i8*) #1

declare dso_local i32 @getgrnam_r(i8*, %struct.group*, i8*, i32, %struct.group**) #1

declare dso_local i32 @cap_getgrnam_r(i32*, i8*, %struct.group*, i8*, i32, %struct.group**) #1

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local %struct.group* @cap_getgrgid(i32*, i32) #1

declare dso_local i32 @getgrgid_r(i32, %struct.group*, i8*, i32, %struct.group**) #1

declare dso_local i32 @cap_getgrgid_r(i32*, i32, %struct.group*, i8*, i32, %struct.group**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
