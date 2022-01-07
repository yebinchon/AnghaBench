; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_unsetcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_commands.c_unsetcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.setlist = type { i8*, i8*, i32*, i32 (i32)* }
%struct.togglelist = type { i8*, i32 (i32)*, i64* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Need an argument to 'unset' command.  'unset ?' for help.\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@Setlist = common dso_local global %struct.setlist* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"%-15s %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"display help information\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"'%s': unknown argument ('unset ?' for help).\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"'%s': ambiguous argument ('unset ?' for help).\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%s %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Will\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Won't\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"%s reset to \22%s\22.\0A\00", align 1
@_POSIX_VDISABLE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"%s character is '%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @unsetcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unsetcmd(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.setlist*, align 8
  %7 = alloca %struct.togglelist*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %166

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @isprefix(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @isprefix(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %20, %14
  %27 = load %struct.setlist*, %struct.setlist** @Setlist, align 8
  store %struct.setlist* %27, %struct.setlist** %6, align 8
  br label %28

28:                                               ; preds = %41, %26
  %29 = load %struct.setlist*, %struct.setlist** %6, align 8
  %30 = getelementptr inbounds %struct.setlist, %struct.setlist* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.setlist*, %struct.setlist** %6, align 8
  %35 = getelementptr inbounds %struct.setlist, %struct.setlist* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.setlist*, %struct.setlist** %6, align 8
  %38 = getelementptr inbounds %struct.setlist, %struct.setlist* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %36, i8* %39)
  br label %41

41:                                               ; preds = %33
  %42 = load %struct.setlist*, %struct.setlist** %6, align 8
  %43 = getelementptr inbounds %struct.setlist, %struct.setlist* %42, i32 1
  store %struct.setlist* %43, %struct.setlist** %6, align 8
  br label %28

44:                                               ; preds = %28
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %46 = call i32 @settogglehelp(i32 0)
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %166

48:                                               ; preds = %20
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %4, align 4
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i32 1
  store i8** %52, i8*** %5, align 8
  br label %53

53:                                               ; preds = %164, %48
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %4, align 4
  %56 = icmp ne i32 %54, 0
  br i1 %56, label %57, label %165

57:                                               ; preds = %53
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i32 1
  store i8** %59, i8*** %5, align 8
  %60 = load i8*, i8** %58, align 8
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call %struct.setlist* @getset(i8* %61)
  store %struct.setlist* %62, %struct.setlist** %6, align 8
  %63 = load %struct.setlist*, %struct.setlist** %6, align 8
  %64 = icmp eq %struct.setlist* %63, null
  br i1 %64, label %65, label %121

65:                                               ; preds = %57
  %66 = load i8*, i8** %8, align 8
  %67 = call %struct.togglelist* @GETTOGGLE(i8* %66)
  store %struct.togglelist* %67, %struct.togglelist** %7, align 8
  %68 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %69 = icmp eq %struct.togglelist* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @stderr, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %72)
  store i32 0, i32* %3, align 4
  br label %166

74:                                               ; preds = %65
  %75 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %76 = bitcast %struct.togglelist* %75 to i8*
  %77 = call i64 @Ambiguous(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @stderr, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %81)
  store i32 0, i32* %3, align 4
  br label %166

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %86 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %89, label %110

89:                                               ; preds = %84
  %90 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %91 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %90, i32 0, i32 2
  %92 = load i64*, i64** %91, align 8
  store i64 0, i64* %92, align 8
  %93 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %94 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %109

97:                                               ; preds = %89
  %98 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %99 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)
  %105 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %106 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* %104, i8* %107)
  br label %109

109:                                              ; preds = %97, %89
  br label %110

110:                                              ; preds = %109, %84
  %111 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %112 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %111, i32 0, i32 1
  %113 = load i32 (i32)*, i32 (i32)** %112, align 8
  %114 = icmp ne i32 (i32)* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %117 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %116, i32 0, i32 1
  %118 = load i32 (i32)*, i32 (i32)** %117, align 8
  %119 = call i32 %118(i32 0)
  br label %120

120:                                              ; preds = %115, %110
  br label %164

121:                                              ; preds = %57
  %122 = load %struct.setlist*, %struct.setlist** %6, align 8
  %123 = bitcast %struct.setlist* %122 to i8*
  %124 = call i64 @Ambiguous(i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32, i32* @stderr, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i8* %128)
  store i32 0, i32* %3, align 4
  br label %166

130:                                              ; preds = %121
  %131 = load %struct.setlist*, %struct.setlist** %6, align 8
  %132 = getelementptr inbounds %struct.setlist, %struct.setlist* %131, i32 0, i32 3
  %133 = load i32 (i32)*, i32 (i32)** %132, align 8
  %134 = icmp ne i32 (i32)* %133, null
  br i1 %134, label %135, label %148

135:                                              ; preds = %130
  %136 = load %struct.setlist*, %struct.setlist** %6, align 8
  %137 = getelementptr inbounds %struct.setlist, %struct.setlist* %136, i32 0, i32 3
  %138 = load i32 (i32)*, i32 (i32)** %137, align 8
  %139 = call i32 %138(i32 0)
  %140 = load %struct.setlist*, %struct.setlist** %6, align 8
  %141 = getelementptr inbounds %struct.setlist, %struct.setlist* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.setlist*, %struct.setlist** %6, align 8
  %144 = getelementptr inbounds %struct.setlist, %struct.setlist* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = bitcast i32* %145 to i8*
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %142, i8* %146)
  br label %162

148:                                              ; preds = %130
  %149 = load i32, i32* @_POSIX_VDISABLE, align 4
  %150 = load %struct.setlist*, %struct.setlist** %6, align 8
  %151 = getelementptr inbounds %struct.setlist, %struct.setlist* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  store i32 %149, i32* %152, align 4
  %153 = load %struct.setlist*, %struct.setlist** %6, align 8
  %154 = getelementptr inbounds %struct.setlist, %struct.setlist* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.setlist*, %struct.setlist** %6, align 8
  %157 = getelementptr inbounds %struct.setlist, %struct.setlist* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @control(i32 %159)
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %155, i8* %160)
  br label %162

162:                                              ; preds = %148, %135
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163, %120
  br label %53

165:                                              ; preds = %53
  store i32 1, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %126, %79, %70, %44, %11
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @isprefix(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @settogglehelp(i32) #1

declare dso_local %struct.setlist* @getset(i8*) #1

declare dso_local %struct.togglelist* @GETTOGGLE(i8*) #1

declare dso_local i64 @Ambiguous(i8*) #1

declare dso_local i8* @control(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
