; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_mech_switch.c__gss_load_mech.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_mech_switch.c__gss_load_mech.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._gss_mech_switch = type { i8*, %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { %struct._gss_mech_switch* }

@_gss_mechs = common dso_local global i32 0, align 4
@_gss_mech_oids = common dso_local global i32 0, align 4
@_PATH_GSS_MECH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\09\0A \00", align 1
@RTLD_LOCAL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"dlopen: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"_gss_name_prefix\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gss\00", align 1
@acquire_cred = common dso_local global i32 0, align 4
@release_cred = common dso_local global i32 0, align 4
@init_sec_context = common dso_local global i32 0, align 4
@accept_sec_context = common dso_local global i32 0, align 4
@process_context_token = common dso_local global i32 0, align 4
@delete_sec_context = common dso_local global i32 0, align 4
@context_time = common dso_local global i32 0, align 4
@get_mic = common dso_local global i32 0, align 4
@verify_mic = common dso_local global i32 0, align 4
@wrap = common dso_local global i32 0, align 4
@unwrap = common dso_local global i32 0, align 4
@display_status = common dso_local global i32 0, align 4
@indicate_mechs = common dso_local global i32 0, align 4
@compare_name = common dso_local global i32 0, align 4
@display_name = common dso_local global i32 0, align 4
@import_name = common dso_local global i32 0, align 4
@export_name = common dso_local global i32 0, align 4
@release_name = common dso_local global i32 0, align 4
@inquire_cred = common dso_local global i32 0, align 4
@inquire_context = common dso_local global i32 0, align 4
@wrap_size_limit = common dso_local global i32 0, align 4
@add_cred = common dso_local global i32 0, align 4
@inquire_cred_by_mech = common dso_local global i32 0, align 4
@export_sec_context = common dso_local global i32 0, align 4
@import_sec_context = common dso_local global i32 0, align 4
@inquire_names_for_mech = common dso_local global i32 0, align 4
@inquire_mechs_for_name = common dso_local global i32 0, align 4
@canonicalize_name = common dso_local global i32 0, align 4
@duplicate_name = common dso_local global i32 0, align 4
@inquire_sec_context_by_oid = common dso_local global i32 0, align 4
@inquire_cred_by_oid = common dso_local global i32 0, align 4
@set_sec_context_option = common dso_local global i32 0, align 4
@set_cred_option = common dso_local global i32 0, align 4
@pseudo_random = common dso_local global i32 0, align 4
@pname_to_uid = common dso_local global i32 0, align 4
@gm_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_gss_load_mech() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._gss_mech_switch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8* ()*, align 8
  %14 = call i64 @SLIST_FIRST(i32* @_gss_mechs)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  br label %243

17:                                               ; preds = %0
  %18 = call i64 @gss_create_empty_oid_set(i64* %2, i32* @_gss_mech_oids)
  store i64 %18, i64* %1, align 8
  %19 = load i64, i64* %1, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %243

22:                                               ; preds = %17
  %23 = load i32, i32* @_PATH_GSS_MECH, align 4
  %24 = call i32* @fopen(i32 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @_PATH_GSS_MECH, align 4
  %29 = call i32 @perror(i32 %28)
  br label %243

30:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %230, %154, %146, %123, %105, %98, %41, %30
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @fgets(i8* %32, i32 256, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %240

36:                                               ; preds = %31
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 35
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %31

42:                                               ; preds = %36
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  store i8* %43, i8** %5, align 8
  %44 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %44, i8** %6, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %53, %47
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @isspace(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %5, align 8
  br label %48

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %42
  %58 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %58, i8** %7, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %67, %61
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @isspace(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  br label %62

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %57
  %72 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %72, i8** %8, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %81, %75
  %77 = load i8*, i8** %5, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @isspace(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  br label %76

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %71
  %86 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %86, i8** %9, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i8*, i8** %7, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load i8*, i8** %8, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i8*, i8** %9, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %95, %92, %89, %85
  br label %31

99:                                               ; preds = %95
  %100 = load i8*, i8** %8, align 8
  %101 = load i32, i32* @RTLD_LOCAL, align 4
  %102 = call i8* @dlopen(i8* %100, i32 %101)
  store i8* %102, i8** %12, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %99
  %106 = load i32, i32* @stderr, align 4
  %107 = call i8* (...) @dlerror()
  %108 = call i32 @fprintf(i32 %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %107)
  br label %31

109:                                              ; preds = %99
  %110 = call %struct._gss_mech_switch* @malloc(i32 24)
  store %struct._gss_mech_switch* %110, %struct._gss_mech_switch** %10, align 8
  %111 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %112 = icmp ne %struct._gss_mech_switch* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  br label %240

114:                                              ; preds = %109
  %115 = load i8*, i8** %12, align 8
  %116 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %117 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load i8*, i8** %7, align 8
  %119 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %120 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %119, i32 0, i32 1
  %121 = call i64 @_gss_string_to_oid(i8* %118, %struct.TYPE_3__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %125 = call i32 @free(%struct._gss_mech_switch* %124)
  br label %31

126:                                              ; preds = %114
  %127 = load i8*, i8** %12, align 8
  %128 = call i64 @dlsym(i8* %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %129 = inttoptr i64 %128 to i8* ()*
  store i8* ()* %129, i8* ()** %13, align 8
  %130 = load i8* ()*, i8* ()** %13, align 8
  %131 = icmp ne i8* ()* %130, null
  br i1 %131, label %132, label %137

132:                                              ; preds = %126
  %133 = load i8* ()*, i8* ()** %13, align 8
  %134 = call i8* %133()
  %135 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %136 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  br label %140

137:                                              ; preds = %126
  %138 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %139 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %138, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %139, align 8
  br label %140

140:                                              ; preds = %137, %132
  %141 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %142 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %141, i32 0, i32 1
  %143 = call i64 @gss_add_oid_set_member(i64* %2, %struct.TYPE_3__* %142, i32* @_gss_mech_oids)
  store i64 %143, i64* %1, align 8
  %144 = load i64, i64* %1, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %140
  %147 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %148 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %149, align 8
  %151 = call i32 @free(%struct._gss_mech_switch* %150)
  %152 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %153 = call i32 @free(%struct._gss_mech_switch* %152)
  br label %31

154:                                              ; preds = %140
  %155 = load i32, i32* @acquire_cred, align 4
  %156 = call i32 @SYM(i32 %155)
  %157 = load i32, i32* @release_cred, align 4
  %158 = call i32 @SYM(i32 %157)
  %159 = load i32, i32* @init_sec_context, align 4
  %160 = call i32 @SYM(i32 %159)
  %161 = load i32, i32* @accept_sec_context, align 4
  %162 = call i32 @SYM(i32 %161)
  %163 = load i32, i32* @process_context_token, align 4
  %164 = call i32 @SYM(i32 %163)
  %165 = load i32, i32* @delete_sec_context, align 4
  %166 = call i32 @SYM(i32 %165)
  %167 = load i32, i32* @context_time, align 4
  %168 = call i32 @SYM(i32 %167)
  %169 = load i32, i32* @get_mic, align 4
  %170 = call i32 @SYM(i32 %169)
  %171 = load i32, i32* @verify_mic, align 4
  %172 = call i32 @SYM(i32 %171)
  %173 = load i32, i32* @wrap, align 4
  %174 = call i32 @SYM(i32 %173)
  %175 = load i32, i32* @unwrap, align 4
  %176 = call i32 @SYM(i32 %175)
  %177 = load i32, i32* @display_status, align 4
  %178 = call i32 @SYM(i32 %177)
  %179 = load i32, i32* @indicate_mechs, align 4
  %180 = call i32 @OPTSYM(i32 %179)
  %181 = load i32, i32* @compare_name, align 4
  %182 = call i32 @SYM(i32 %181)
  %183 = load i32, i32* @display_name, align 4
  %184 = call i32 @SYM(i32 %183)
  %185 = load i32, i32* @import_name, align 4
  %186 = call i32 @SYM(i32 %185)
  %187 = load i32, i32* @export_name, align 4
  %188 = call i32 @SYM(i32 %187)
  %189 = load i32, i32* @release_name, align 4
  %190 = call i32 @SYM(i32 %189)
  %191 = load i32, i32* @inquire_cred, align 4
  %192 = call i32 @SYM(i32 %191)
  %193 = load i32, i32* @inquire_context, align 4
  %194 = call i32 @SYM(i32 %193)
  %195 = load i32, i32* @wrap_size_limit, align 4
  %196 = call i32 @SYM(i32 %195)
  %197 = load i32, i32* @add_cred, align 4
  %198 = call i32 @SYM(i32 %197)
  %199 = load i32, i32* @inquire_cred_by_mech, align 4
  %200 = call i32 @SYM(i32 %199)
  %201 = load i32, i32* @export_sec_context, align 4
  %202 = call i32 @SYM(i32 %201)
  %203 = load i32, i32* @import_sec_context, align 4
  %204 = call i32 @SYM(i32 %203)
  %205 = load i32, i32* @inquire_names_for_mech, align 4
  %206 = call i32 @SYM(i32 %205)
  %207 = load i32, i32* @inquire_mechs_for_name, align 4
  %208 = call i32 @SYM(i32 %207)
  %209 = load i32, i32* @canonicalize_name, align 4
  %210 = call i32 @SYM(i32 %209)
  %211 = load i32, i32* @duplicate_name, align 4
  %212 = call i32 @SYM(i32 %211)
  %213 = load i32, i32* @inquire_sec_context_by_oid, align 4
  %214 = call i32 @OPTSYM(i32 %213)
  %215 = load i32, i32* @inquire_cred_by_oid, align 4
  %216 = call i32 @OPTSYM(i32 %215)
  %217 = load i32, i32* @set_sec_context_option, align 4
  %218 = call i32 @OPTSYM(i32 %217)
  %219 = load i32, i32* @set_cred_option, align 4
  %220 = call i32 @OPTSYM(i32 %219)
  %221 = load i32, i32* @pseudo_random, align 4
  %222 = call i32 @OPTSYM(i32 %221)
  %223 = load i32, i32* @pname_to_uid, align 4
  %224 = call i32 @OPTSYM(i32 %223)
  %225 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %226 = load i32, i32* @gm_link, align 4
  %227 = call i32 @SLIST_INSERT_HEAD(i32* @_gss_mechs, %struct._gss_mech_switch* %225, i32 %226)
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %31

230:                                              ; No predecessors!
  %231 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %232 = getelementptr inbounds %struct._gss_mech_switch, %struct._gss_mech_switch* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 0
  %234 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %233, align 8
  %235 = call i32 @free(%struct._gss_mech_switch* %234)
  %236 = load %struct._gss_mech_switch*, %struct._gss_mech_switch** %10, align 8
  %237 = call i32 @free(%struct._gss_mech_switch* %236)
  %238 = load i8*, i8** %12, align 8
  %239 = call i32 @dlclose(i8* %238)
  br label %31

240:                                              ; preds = %113, %31
  %241 = load i32*, i32** %3, align 8
  %242 = call i32 @fclose(i32* %241)
  br label %243

243:                                              ; preds = %240, %27, %21, %16
  ret void
}

declare dso_local i64 @SLIST_FIRST(i32*) #1

declare dso_local i64 @gss_create_empty_oid_set(i64*, i32*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @perror(i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @dlopen(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @dlerror(...) #1

declare dso_local %struct._gss_mech_switch* @malloc(i32) #1

declare dso_local i64 @_gss_string_to_oid(i8*, %struct.TYPE_3__*) #1

declare dso_local i32 @free(%struct._gss_mech_switch*) #1

declare dso_local i64 @dlsym(i8*, i8*) #1

declare dso_local i64 @gss_add_oid_set_member(i64*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @SYM(i32) #1

declare dso_local i32 @OPTSYM(i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct._gss_mech_switch*, i32) #1

declare dso_local i32 @dlclose(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
