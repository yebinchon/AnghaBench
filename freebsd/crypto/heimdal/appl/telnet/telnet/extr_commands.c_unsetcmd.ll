; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_unsetcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_unsetcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.togglelist = type { i8*, i8*, i8*, i32*, i32 (i32)*, i64* }
%struct.setlist = type { i8*, i8*, i8*, i32*, i32 (i32)*, i64* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Need an argument to 'unset' command.  'unset ?' for help.\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@Setlist = common dso_local global %struct.togglelist* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"%-15s %s\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"display help information\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"'%s': unknown argument ('unset ?' for help).\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"'%s': ambiguous argument ('unset ?' for help).\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%s %s.\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Will\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Won't\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%s reset to \22%s\22.\0D\0A\00", align 1
@_POSIX_VDISABLE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [24 x i8] c"%s character is '%s'.\0D\0A\00", align 1
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
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %167

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
  br i1 %25, label %26, label %49

26:                                               ; preds = %20, %14
  %27 = load %struct.togglelist*, %struct.togglelist** @Setlist, align 8
  %28 = bitcast %struct.togglelist* %27 to %struct.setlist*
  store %struct.setlist* %28, %struct.setlist** %6, align 8
  br label %29

29:                                               ; preds = %42, %26
  %30 = load %struct.setlist*, %struct.setlist** %6, align 8
  %31 = getelementptr inbounds %struct.setlist, %struct.setlist* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.setlist*, %struct.setlist** %6, align 8
  %36 = getelementptr inbounds %struct.setlist, %struct.setlist* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.setlist*, %struct.setlist** %6, align 8
  %39 = getelementptr inbounds %struct.setlist, %struct.setlist* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %37, i8* %40)
  br label %42

42:                                               ; preds = %34
  %43 = load %struct.setlist*, %struct.setlist** %6, align 8
  %44 = getelementptr inbounds %struct.setlist, %struct.setlist* %43, i32 1
  store %struct.setlist* %44, %struct.setlist** %6, align 8
  br label %29

45:                                               ; preds = %29
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %47 = call i32 @settogglehelp(i32 0)
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %167

49:                                               ; preds = %20
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %4, align 4
  %52 = load i8**, i8*** %5, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i32 1
  store i8** %53, i8*** %5, align 8
  br label %54

54:                                               ; preds = %165, %49
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %4, align 4
  %57 = icmp ne i32 %55, 0
  br i1 %57, label %58, label %166

58:                                               ; preds = %54
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %5, align 8
  %61 = load i8*, i8** %59, align 8
  store i8* %61, i8** %8, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call %struct.togglelist* @getset(i8* %62)
  %64 = bitcast %struct.togglelist* %63 to %struct.setlist*
  store %struct.setlist* %64, %struct.setlist** %6, align 8
  %65 = load %struct.setlist*, %struct.setlist** %6, align 8
  %66 = icmp eq %struct.setlist* %65, null
  br i1 %66, label %67, label %122

67:                                               ; preds = %58
  %68 = load i8*, i8** %8, align 8
  %69 = call %struct.togglelist* @GETTOGGLE(i8* %68)
  store %struct.togglelist* %69, %struct.togglelist** %7, align 8
  %70 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %71 = icmp eq %struct.togglelist* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @stderr, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %74)
  store i32 0, i32* %3, align 4
  br label %167

76:                                               ; preds = %67
  %77 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %78 = call i64 @Ambiguous(%struct.togglelist* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @stderr, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %82)
  store i32 0, i32* %3, align 4
  br label %167

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %87 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %86, i32 0, i32 5
  %88 = load i64*, i64** %87, align 8
  %89 = icmp ne i64* %88, null
  br i1 %89, label %90, label %111

90:                                               ; preds = %85
  %91 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %92 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %91, i32 0, i32 5
  %93 = load i64*, i64** %92, align 8
  store i64 0, i64* %93, align 8
  %94 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %95 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %90
  %99 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %100 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %99, i32 0, i32 5
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)
  %106 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %107 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %105, i8* %108)
  br label %110

110:                                              ; preds = %98, %90
  br label %111

111:                                              ; preds = %110, %85
  %112 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %113 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %112, i32 0, i32 4
  %114 = load i32 (i32)*, i32 (i32)** %113, align 8
  %115 = icmp ne i32 (i32)* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.togglelist*, %struct.togglelist** %7, align 8
  %118 = getelementptr inbounds %struct.togglelist, %struct.togglelist* %117, i32 0, i32 4
  %119 = load i32 (i32)*, i32 (i32)** %118, align 8
  %120 = call i32 %119(i32 0)
  br label %121

121:                                              ; preds = %116, %111
  br label %165

122:                                              ; preds = %58
  %123 = load %struct.setlist*, %struct.setlist** %6, align 8
  %124 = bitcast %struct.setlist* %123 to %struct.togglelist*
  %125 = call i64 @Ambiguous(%struct.togglelist* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, i32* @stderr, align 4
  %129 = load i8*, i8** %8, align 8
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %129)
  store i32 0, i32* %3, align 4
  br label %167

131:                                              ; preds = %122
  %132 = load %struct.setlist*, %struct.setlist** %6, align 8
  %133 = getelementptr inbounds %struct.setlist, %struct.setlist* %132, i32 0, i32 4
  %134 = load i32 (i32)*, i32 (i32)** %133, align 8
  %135 = icmp ne i32 (i32)* %134, null
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load %struct.setlist*, %struct.setlist** %6, align 8
  %138 = getelementptr inbounds %struct.setlist, %struct.setlist* %137, i32 0, i32 4
  %139 = load i32 (i32)*, i32 (i32)** %138, align 8
  %140 = call i32 %139(i32 0)
  %141 = load %struct.setlist*, %struct.setlist** %6, align 8
  %142 = getelementptr inbounds %struct.setlist, %struct.setlist* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.setlist*, %struct.setlist** %6, align 8
  %145 = getelementptr inbounds %struct.setlist, %struct.setlist* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = bitcast i32* %146 to i8*
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %143, i8* %147)
  br label %163

149:                                              ; preds = %131
  %150 = load i32, i32* @_POSIX_VDISABLE, align 4
  %151 = load %struct.setlist*, %struct.setlist** %6, align 8
  %152 = getelementptr inbounds %struct.setlist, %struct.setlist* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  store i32 %150, i32* %153, align 4
  %154 = load %struct.setlist*, %struct.setlist** %6, align 8
  %155 = getelementptr inbounds %struct.setlist, %struct.setlist* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.setlist*, %struct.setlist** %6, align 8
  %158 = getelementptr inbounds %struct.setlist, %struct.setlist* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @control(i32 %160)
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i8* %156, i8* %161)
  br label %163

163:                                              ; preds = %149, %136
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164, %121
  br label %54

166:                                              ; preds = %54
  store i32 1, i32* %3, align 4
  br label %167

167:                                              ; preds = %166, %127, %80, %72, %45, %11
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @isprefix(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @settogglehelp(i32) #1

declare dso_local %struct.togglelist* @getset(i8*) #1

declare dso_local %struct.togglelist* @GETTOGGLE(i8*) #1

declare dso_local i64 @Ambiguous(%struct.togglelist*) #1

declare dso_local i8* @control(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
